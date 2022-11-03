//
//  TilePuzzleView.swift
//  Esca.pee
//
//  Created by LoreVilaca on 31/10/22.
//

import SwiftUI

extension Animation {
    static func slide() -> Animation {
        Animation.easeOut(duration: AnimationConstants.slideAnimationDuration)
    }
}

struct InnerTile: View {
    var number: Int
    var dimension: Int
    let imagePath: String
    
    var body: some View {
        Text("\(number)")
            .font(Font.custom("HelveticaNeue", size: 25.0))
            .shadow(color: Color.white, radius: 1.0, x: 1.0, y: 1.0)
            .foregroundColor(Color.black)
            .frame(width: CGFloat(BoardConstants.tileSize), height: CGFloat(BoardConstants.tileSize), alignment: .center)
            .background(color())
            .cornerRadius(5.0)
    }
    
    private func color() -> Color {
        // Desiring a hue between 0.44 and 0.56
        let start = 0.45
        let range = 0.12
        let offset = range / Double(dimension * dimension) * Double(number)
        let hue = start + offset
        return Color.init(hue: hue, saturation: 1.0, brightness: 1.0)
    }
}

struct BoardTileView: View {
    var boardView: BoardView
    var board: Board
    @ObservedObject var tile: Board.Tile
    
    init(boardView: BoardView, tile: Board.Tile) {
        self.boardView = boardView
        self.tile = tile
        self.board = boardView.model
    }
    var body: some View {
        if board.object!.puzzleSolved{
            Image(ImageConstants.shared.EIGHT_HEARTS)
                .resizable()
                .scaledToFit()
                .frame(minHeight: UIScreen.main.bounds.height - 30)
        } else {
            InnerTile(number: tile.number, dimension: tile.dimension, imagePath: tile.imagePath)
                .offset(boardView.offsets[tile.position]!)
                .onTapGesture {
                    board.move(position: tile.position) { position, solved in
                    }
                }
                .animation(.slide())
        }
    }
}

struct BoardView: View {
    public var model: Board
    public var offsets: [Int:CGSize]
    
    init(model: Board) {
        self.model = model
        var offsets:[Int:CGSize] = [:]
        for i in 1...(model.dimension * model.dimension) {
            offsets[i] = BoardView.offsetForPosition(n: model.dimension, position: i)
        }
        self.offsets = offsets
    }
    
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
            ForEach(model.tiles, id: \.self) { tile in
                BoardTileView(boardView: self, tile: tile)
                    .background(Color.clear)
            }
        }
    }
    
    static func offsetForPosition(n: Int, position: Int) -> CGSize {
        let col = CGFloat((position - 1) % n)
        let row = CGFloat((position - 1) / n)
        return CGSize(width: col * BoardConstants.tileSize + (col - 1) * BoardConstants.spacing + 6.0,
                      height: row * BoardConstants.tileSize + (row - 1) * BoardConstants.spacing + 6.0)
    }
    
}

struct TilePuzzleView: View {
    @EnvironmentObject var boardModel: Board
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        VStack(alignment: .center, spacing: 5.0) {
            Spacer().frame(height:2.0)
            BoardView(model: boardModel).frame(width: frameSize(), height: frameSize(), alignment: .topLeading)
            
        }.background(Color("Board"))
    }
    
    private func frameSize() -> CGFloat {
        return CGFloat(boardModel.dimension) * BoardConstants.tileSize + CGFloat(boardModel.dimension - 1) * BoardConstants.spacing + 6.0
    }
    private func progressColor(_ progress: Double) -> Color {
        return Color(red: 0.0, green: 1.0, blue: 0.0)
    }
    
    func getBoard () -> Board {
        return boardModel
    }
}
