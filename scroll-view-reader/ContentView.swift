//
//  ContentView.swift
//  scroll-view-reader
//
//  Created by user on 6/22/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ScrollViewReader { proxy in
            Button(action: {
                
//                animating scroll
                withAnimation{
                    
//                Scroll to the id where you want
                proxy.scrollTo(30, anchor:.bottom)
                }
            }, label: {
                Text("Scroll to Bottom")
            })
        
    ScrollView{
        ForEach(1...30, id: \.self){index in
            
            Color.red
            .frame(height: 80)
            .overlay(Text("\(index)")
//            Assign ID to each view...
            .id(index))
        }
        
    }
}

struct ContentView_Previews:PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
