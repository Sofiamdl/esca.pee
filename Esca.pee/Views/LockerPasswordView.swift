//
//  LockerPasswordView.swift
//  Esca.pee
//
//  Created by sml on 01/11/22.
//

import SwiftUI

struct LockerPasswordView: View {
    let dock = ItemDock()
    @State private var answer = ""
    @EnvironmentObject private var coordinator: Coordinator
    @EnvironmentObject private var object: CollectableManager

    var body: some View {
        ZStack {
            Image(ImageConstants.shared.BACKGROUND_LOCKER_SCREEN)
                .resizable()
                .scaledToFit()
                .frame(minWidth: UIScreen.main.bounds.width + 30, minHeight: UIScreen.main.bounds.height + 30)
                .overlay(
                    ZStack {
                        dock
                    }.offset(x: 0, y: -UIScreen.main.bounds.height/2 + CGFloat(70))
                        .frame(height: UIScreen.main.bounds.height)
                ).ignoresSafeArea()
                .frame(maxWidth:.infinity, maxHeight: .infinity)
            VStack {
                Text(answer)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 10)
                    .frame(width: 100, height: 26)
                    .background(Color.ui.green)
                    .cornerRadius(4)
                ForEach(0..<3) { firstNumber in
                    HStack {
                        ForEach(1..<4) { number in
                            Button(action: {
                                answer += String((firstNumber * 3) + number)
                            }) {
                                Text(String((firstNumber * 3) + number))
                                    .frame(width: 27, height: 27)
                                    .background(Color.ui.grey)
                                    .foregroundColor(Color.ui.darGrey)
                                    .cornerRadius(4)
                            }
                           
                        }
                    }
                    
                }
                HStack {
                    Button(action: {
                        answer += "0"
                    }) {
                        Text("0")
                            .frame(width: 25, height: 25)
                            .background(Color.ui.grey)
                            .foregroundColor(Color.ui.darGrey)
                            .cornerRadius(4)
                    }
                    
                    Button(action: {
                        if (answer == "288266") {
                            object.addToArray(item: object.key)
                            coordinator.gotoBackOnepage()
                        } else {
                            answer = "-----"
                        }
                    }) {
                        Text("Enter")
                            .frame(width: 60, height: 25)
                            .background(Color.ui.grey)
                            .foregroundColor(Color.ui.darGrey)
                            .cornerRadius(4)
                    }
                }
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 14)
            .background(Color.ui.darGrey)
            .cornerRadius(4)
            .offset(x: 80)
        }
    }
}

