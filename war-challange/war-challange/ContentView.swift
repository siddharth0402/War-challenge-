//
//  ContentView.swift
//  war-challange
//
//  Created by Siddharth Sonkusre on 21/06/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card9"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    
    var body: some View {
        ZStack {
            
            Image ("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image ("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    Image (playerCard)
                    Spacer()
                    Image (cpuCard)
                    Spacer()
                    
                }
                Spacer()
                // deal button created
                Button(action: {
                    
                    // generate  random card card
                    let playerRand = Int.random(in: 2...14)
                    
                    let cpuRand = Int.random(in: 2...14)
                    
                    // update card
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String (cpuRand)
                    
                    
                    //update score
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if playerRand == cpuRand {
                        
                    }
                    
                    else {
                        cpuScore += 1
                    }
//                    playerScore += 1
//                    cpuScore += 1
                    
                }, label: {
                    Image ("dealbutton")
                })
                
                
                Spacer()
                
                HStack {
                    
                    Spacer()
                    VStack {
                        Text ("Palyer").font(.headline).foregroundColor(Color.white).padding()
                        Text (String(playerScore)).colorInvert()

                    }
                    Spacer()
            
                VStack {
                    
                    Text ("CPU").colorInvert().padding(.bottom, 10.0)
                    
                    Text (String(cpuScore)).colorInvert()
                    
                    }
                    Spacer()
                }
                Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
