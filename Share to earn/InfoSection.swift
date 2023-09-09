//
//  InfoSection.swift
//  Share to earn
//
//  Created by 赵玉凡 on 2023/9/9.
//

import SwiftUI

struct InfoSection: View {
    var title: String
    var content: String
    
    var body: some View {
        VStack(alignment:.leading){
            HStack{
                Text(title)
                    .font(.headline)
                Spacer()
                HStack {
                    Text("More")
                        .font(.headline)
                        .fontWeight(.regular)
                    Image(systemName: "chevron.right")
                }
            }
            .padding(.bottom,5)
            Text(content)
                .foregroundColor(Color(red: 0.31, green: 0.3176470588235294, blue: 0.34509803921568627))
                .font(.subheadline)
        }
        .padding(.bottom,15)
    }
}

struct InfoSection_Previews: PreviewProvider {
    static var previews: some View {
        InfoSection(title: "Title", content: "contet")
    }
}
