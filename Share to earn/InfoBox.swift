//
//  InfoBox.swift
//  Share to earn
//
//  Created by 赵玉凡 on 2023/9/9.
//

import SwiftUI

struct InfoBox: View {
    var title: String
    var content: String
    
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.headline)
            GroupBox(){
                HStack {
                    Text(content)
                        .foregroundColor(Color(red: 0.31, green: 0.3176470588235294, blue: 0.34509803921568627))
                    .font(.subheadline)
                    Spacer()
                }
                
            }
        }
        .padding(.bottom,15)
    }
}

struct InfoBox_Previews: PreviewProvider {
    static var previews: some View {
        InfoBox(title: "Title", content: "content")
    }
}
