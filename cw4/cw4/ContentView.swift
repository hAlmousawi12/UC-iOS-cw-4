//
//  ContentView.swift
//  cw4
//
//  Created by Hussain Almousawi on 9/13/22.
//

import SwiftUI

struct ContentView: View {
    @State var Items = ["Pizza", "Burger", "Ice cream", "Apple", "Cotton candy"]
    @State var newItem = ""
    var body: some View {
        VStack {
            List(Items, id: \.self) { item in
                
                HStack {
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    Text(item)
                }
                
            }
            
            HStack {
                
                Button {
                    Items.append(newItem)
                } label: {
                    Image(systemName: "plus")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .frame(width: 50, height: 50)
                .background(Color.green)
                .cornerRadius(15)

                
                TextField("New Item", text: $newItem)
                
                Button {
                    Items.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .frame(width: 50, height: 50)
                .background(Color.red)
                .cornerRadius(15)
                
                Button {
                    Items.append(Items.randomElement() ?? "Hello")
                } label: {
                    Image(systemName: "questionmark")
                        .font(.largeTitle)
                        .foregroundColor(.white)
                }
                .frame(width: 50, height: 50)
                .background(Color.orange)
                .cornerRadius(15)
                
            }.padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
