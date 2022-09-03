//
//  InfoView.swift
//  OliverCard
//
//  Created by Oliver Lauridsen on 03/09/2022.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .frame(height: 40, alignment: .center)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(.green)
                Text(text)
            })
            .padding(.horizontal)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "+45 53 89 80 86", imageName: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
