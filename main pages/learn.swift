//
//  learn.swift
//  StockSensei
//
//  Created by scholar on 8/1/23.
//

import SwiftUI

struct learn: View {
    @State private var isAnimating = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(
                    gradient: Gradient(colors: [Color(red: 0.08, green: 0.17, blue: 0.21), Color(red: 0.05, green: 0.10, blue: 0.13)]),
                    startPoint: .top,
                    endPoint: .bottom
                )
                .ignoresSafeArea()

                VStack(alignment: .leading, spacing: 20) {
                    Text("Learn the Basics")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.leading)
                        .padding([.top, .leading])

                    Spacer()

                    Image("ninja")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .rotationEffect(.degrees(isAnimating ? 360 : 0))
                }
                .padding([.bottom, .trailing], 40.0)

                VStack(alignment: .leading, spacing: 20) {
                    Text("Here are some tips to prepare you for your journey with Stock Sensei")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding(.bottom, 100.0)

                    NavigationLink(destination: ourVision()) {
                        ArticleLinkView(title: "The Stock Sensei Mission")
                    }

                    NavigationLink(destination: basicLearn()) {
                        ArticleLinkView(title: "Fundamentals of Finance")
                    }

                    NavigationLink(destination: typeInvestment()) {
                        ArticleLinkView(title: "Different Types of Investment")
                    }
                }
                .padding([.leading, .bottom, .trailing], 40)
            } // ZStack
        } // NavigationStack
    }
}

struct ArticleLinkView: View {
    var title: String

    var body: some View {
        Text(title)
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.black)
            .padding(20)
            .background(Color.white)
            .cornerRadius(10)
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color.black.opacity(0.2), lineWidth: 1)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 8, x: 0, y: 4)
                }
            }


struct learn_Previews: PreviewProvider {
    static var previews: some View {
        learn()
    }
}
