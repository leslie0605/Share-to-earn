//
//  RoundedImage.swift
//  Share to earn
//
//  Created by 赵玉凡 on 2023/9/9.
//

import SwiftUI

struct RoundedImage: View {
    var imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width:100,height:100)
            .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

struct RoundedImage_Previews: PreviewProvider {
    static var previews: some View {
        RoundedImage(imageName:"Mickey")
    }
}
