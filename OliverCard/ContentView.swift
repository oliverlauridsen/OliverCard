//
//  ContentView.swift
//  OliverCard
//
//  Created by Oliver Lauridsen on 03/09/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.99, green: 0.87, blue: 0.78)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("oliver")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Oliver Lauridsen")
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .font(Font.custom("Pacifico-Regular", size: 30))
                Text("iOS Developer")
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                    .font(.system(size: 20))
                Divider()
                InfoView(text: "+45 53 89 80 86", imageName: "phone.fill")
                InfoView(text: "olidude2.0@gmail.com", imageName: "envelope.fill")

            
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

