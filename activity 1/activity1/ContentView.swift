//
//  ContentView.swift
//  activity1
//
//  Created by Austin Arroyo on 8/29/25.
//

import SwiftUI

struct ContentView: View {
    @State var greetingText: String = ""
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var imageName: String = "Mickey"
    var body: some View {
        VStack{
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Welcome to CSE 335")
            Text("Enter Name Below:")
            Spacer()
            
            HStack{
                Text("First Name:")
                Spacer()
            }
            TextField("Enter here", text: $firstName)
        
            HStack{
                Text("Last Name:")
                Spacer()
            }
            
            TextField("Enter here", text: $lastName)
            Spacer()
            
            Button("Greeting"){
                greetingText = "\(firstName) \(lastName) Welcome to CSE 335"
                }
            Spacer()
            Text(greetingText)
            
            if !firstName.isEmpty && !lastName.isEmpty && !greetingText.isEmpty {
                Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 5000.0, height: 200.0, alignment: .center)
            }
        }
        .padding()
    }
}

 #Preview {
 ContentView()
 }

