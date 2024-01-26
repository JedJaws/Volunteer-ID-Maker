//
//  ContentView.swift
//  VolunteerIDMaker
//
//  Created by Paul Inventado on 2/25/22.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""
    @State var address: String = ""
    @State var age: String = ""
    var body: some View {
        // TODO: Enclose this entire VStack with GeometryReader in Model 3
        GeometryReader { geometry in
            
            VStack {
                // TODO: Add frame method call to this VStack in Model 3
                VStack {
                    Text("SafeWalk Volunteer")
                        .modifier(SafeWalkText())
                    HStack {
                        Spacer()
                        Text("Name: ")
                            .font(.custom("Courier New", size: 16))
                        TextField("Name", text: $name)
                            .font(.custom("Courier New", size: 16))
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text("Address: ")
                            .font(.custom("Courier New", size: 16))
                        TextField("Address", text: $address)
                            .font(.custom("Courier New", size: 16))
                        Spacer()
                    }
                    HStack {
                        Spacer()
                        Text("Age: ")
                            .font(.custom("Courier New", size: 16))
                        TextField("Age", text:$age)
                            .font(.custom("Courier New", size: 16))
                        Spacer()
                    }
                } .frame(height: geometry.size.height / 2)
                Spacer()
                
                VStack{
                    Text("ID Sample")
                        .modifier(SafeWalkText())
                }
                /* TODO: Replace the entire Text VStack below with sub view provided in Model 2
                 */
                VStack{
                    Information(name: $name, address: $address, age: $age)
                }
                Spacer()
            }
        }
    }
}

// TODO: Add Information structure provided in Model 2
struct Information: View {
    @Binding var name: String
    @Binding var address: String
    @Binding var age: String
    var body: some View{
        VStack{
            Text("SafeWalk Volunteer | California")
                .font(.custom("Courier New", size: 13))
                .bold()
            Spacer()
            HStack{
                VStack{
                    Text("🥸")
                        .font(.custom("Courier New", size: 90))
                        .frame(width: 100, height: 115, alignment: .center)
                        .background(Color.white)
                }
                Spacer()
                VStack{
                    Spacer()
                    HStack{
                        Spacer()
                            Text(name)
                                .bold()
                                .font(.custom("Courier New", size: 13))
                                .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    HStack{
                        Spacer()
                        Text(address)
                            .font(.custom("Courier New", size: 12))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    Spacer()
                    HStack{
                        Text("Age:")
                            .font(.custom("Courier New", size: 15))
                            .bold()
                            .frame(maxWidth: 37, alignment: .center)
                            .padding(.leading, 7)
                                                
                        Text(age)
                            .font(.custom("Courier New", size: 15))
                            .bold()
                            .frame(maxWidth: 37, alignment: .leading)
                        Spacer()
                    }
                }
            }
        }.modifier(IDText())
    }
}

// TODO: Add custom modifier below then use it to customizes your views for Model 5
struct SafeWalkText: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 20))
           .foregroundColor(Color.white)
           .padding()
           .background(Color.black)
           .cornerRadius(10)
    }
}

struct IDText: ViewModifier {
   func body(content: Content) -> some View {
        content
           .font(.custom("Courier New", size: 20))
           .frame(width: 250, height: 125)
           .foregroundColor(Color.black)
           .padding()
           .background(Color.yellow)
           .cornerRadius(10)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
