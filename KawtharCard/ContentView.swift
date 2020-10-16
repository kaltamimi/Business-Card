//
//  ContentView.swift
//  KawtharCard
//
//  Created by Kawthar Khalid al-Tamimi on 10/16/20.
//  Copyright © 2020 Kawthar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(Constant.Colors.electromagnetic)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image(Constant.User.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color(.black), lineWidth: 5)
                )
                Text(Constant.User.name)
                    .font(Font.custom(Constant.customFont, size: 40))
                    .foregroundColor(Color(Constant.Colors.harleyOrange))
                    .bold()
                Text(Constant.User.jobTitle)
                    .foregroundColor(Color(Constant.Colors.harleyOrange))
                    .font(.system(size: 25))
                Divider()
                InfoView(text: Constant.User.linkedinName, imageName: Constant.Icons.profile)
                    .onTapGesture {
                        UIApplication.shared.open(
                            (URL(string: Constant.User.linkedinURL) ??
                                URL(string: "https://www.linkedin.com/in/unavailable/"))!
                        )
                }
                InfoView(text: Constant.User.email, imageName: Constant.Icons.email)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
