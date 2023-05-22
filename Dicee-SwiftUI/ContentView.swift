//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by NazarStf on 19.05.2023.
//

import SwiftUI

struct ContentView: View {
	
	@State var leftDiceNumber = 1
	@State var rightDiceNymber = 2
	
    var body: some View {
        ZStack {
			Image("background")
				.resizable()
				.edgesIgnoringSafeArea(.all)
			VStack {
				Image("diceeLogo")
				Spacer()
				HStack {
					DiceView(n: leftDiceNumber)
					DiceView(n: rightDiceNymber)
				}
				.padding(.horizontal)
				Spacer()
				Button(action: {
					leftDiceNumber = Int.random(in: 1...6)
					rightDiceNymber = Int.random(in: 1...6)
				}) {
					Text("Roll")
						.font(.system(size: 50))
						.fontWeight(.heavy)
						.foregroundColor(.white)
						.padding(.horizontal)
				}
				.background(Color.red)
				Spacer()
			}
        }
    }
}

struct DiceView: View {
	
	let n: Int
	
	var body: some View {
		Image("dice\(n)")
			.resizable()
			.aspectRatio(1, contentMode: .fit)
			.padding()
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
