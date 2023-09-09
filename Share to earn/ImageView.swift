//
//  ImageView.swift
//  Share to earn
//
//  Created by 赵玉凡 on 2023/9/9.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        Image("Mickey")
            .clipShape(Circle())
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
