//
//  ContentView.swift
//  counter
//
//  Created by Nojood Aljuaid  on 01/11/1444 AH.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var isToggle = false
    var body: some View {
        VStack {
            Text("\(counter)")
                .bold()
                .font(Font.system(size: 70))
            HStack {
                Button(action: {
                    self.counter -= 1
                    
                }, label: {
                    Text("-")
                        .bold()
                        .font(Font.system(size: 65))
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(50)
                })
                Button(action: {
                    self.counter += 1
                    
                }, label: {
                    Text("+")
                        .bold()
                        .font(Font.system(size: 65))
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(50)
                    
                })
                .padding()
            }
            
        }
        
        Toggle("" , isOn: $isToggle)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
