//
//  InfoView.swift
//  KawtharCard
//
//  Created by Kawthar Khalid al-Tamimi on 10/16/20.
//  Copyright © 2020 Kawthar. All rights reserved.
//

import SwiftUI


struct InfoView: View {
    
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 22)
            .fill(Color(Constant.Colors.lynxWhite))
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName )
                    .foregroundColor(Color(Constant.Colors.blueNight))
                Text(text)
                
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Hello", imageName: Constant.Icons.profile)
            .previewLayout(.sizeThatFits)
    }
}
