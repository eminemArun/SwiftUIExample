//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Arun Negi on 05/08/2019.
//  Copyright © 2019 arun. All rights reserved.
//

import SwiftUI

struct CircleProfile : View {
    var image: Image
    
    var body: some View {
        image
            .resizable()
            .frame(width: 150, height: 150)
            .aspectRatio(CGSize(width: 50, height: 50), contentMode: .fill)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
        
    }
}


struct ContentView : View {
    func onContact() {
        print("contact me")
        // TODO: Open contact me url in SafariViewController
    }
    var body: some View {
        VStack {
            Image("profile-background")
                .resizable()
                .aspectRatio(UIImage(named: "profile-background")!.size, contentMode: .fill)
                .edgesIgnoringSafeArea(.top)
            
            CircleProfile(image: Image("arun"))
                .offset(x: 0, y: -75)
                .padding(.bottom, -75)
            
            
            VStack(alignment: .center) {
                Text("Arun Negi").font(.title)
                Text("Arun Negi iOS Developer............blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah")
                    .font(.body)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                Button(action: onContact) {
                    Text("Contact Arun")
                }.padding()
            }.padding()
            
            Spacer()
            
        }
        
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
