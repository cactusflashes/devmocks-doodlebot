//
//  ContentView.swift
//  devmocks
//
//  Created by Joseph Andrew Salmon on 11/3/23.
//

import SwiftUI


func getGreeting() -> String {
    let currentHour = Calendar.current.component(.hour, from: Date())
    
    if currentHour >= 5 && currentHour < 12 {
        return "Morning"
    } else if currentHour >= 12 && currentHour < 18 {
        return "Afternoon"
    } else if currentHour >= 18 && currentHour < 21 {
        return "Evening"
    } else {
        return "Evening"
    }
}


let greeting = getGreeting()


struct ContentView: View {
    var body: some View {
        
        VStack { //main container
            
            Spacer()

            VStack (alignment: .leading) {
                Text("Good " + greeting)
                    .font(.system(size: 30))
                    .fontWeight(.light)
                
                Text(Date.now.formatted(date: .long, time: .omitted))
                    .font(.system(size: 30))
                    .fontWeight(.bold)

            } //header vstack
            .offset(x: -50)
            
            Spacer()
                        
            Section{ // section DP
                NavigationLink(destination: DailyPrompt()) {
                    
                    ZStack {
                        
                        VStack (alignment: .leading){ //daily prompt stack
                            
                            VStack (alignment: .leading) {
                                
                                Text("DAILY PROMPT")
                                    .font(.subheadline)
                                    .kerning(2)
                                    .fontWeight(.medium)
                                
                                Text("A Study in Color")
                                    .font(.title)
                                    .fontWeight(.medium)
                                
                                
                                Text("A rods and cones galore.")
                                    .font(.subheadline)
                                    .fontWeight(.regular)
                                    .opacity(0.5)
                            }
                            .offset(x: -65, y:-140)
                            
                        } //daily prompt stack
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .stroke(Color("StrokePrimary"), lineWidth: 2)
                                .fill(Color("BackgroundPrimary"))
                                .frame(width: 390, height: 400)
                        )
                        
                        
                        
                        ZStack {
                            
                            Image("Doodle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 380)
                                .rotationEffect(.degrees(10))
                            
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color("AccentPrimary"))
                                .frame(width: 350, height: 260)
                        )
                        .padding(.top, 100)
                        
                        
                    }
                }
            } //section - DP
            .accentColor(Color("DarkTextPrimary")) // Change the accent color here


            
            VStack (alignment: .leading) {
                
                Text("Get Creative")
                    .font(.title3)
                    .fontWeight(.bold)
                
                Divider()
                
                HStack { //past prompts hori
                    
                    VStack (alignment: .leading) {
                        
                        Text("Past prompts")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(
                            "View prompts from previous days"
                        )
                        .font(.subheadline)
                        .fontWeight(.regular)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "arrow.forward.circle.fill")
                        .foregroundColor(Color("AccentPrimary"))
                        .imageScale(.large)
                    
                } //past prompts
                
                Divider()
                
                Section{
                    NavigationLink(destination: DailyPrompt()) {
                        HStack { //Create your own
                            VStack (alignment: .leading) {
                                Text("Create your own")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                Text("Powered by ChatGPT")
                                    .font(.subheadline)
                                    .fontWeight(.regular)
                            }
                            Spacer()
                            Image(systemName: "arrow.forward.circle.fill")
                                .foregroundColor(Color("AccentPrimary"))
                                .imageScale(.large)
                        }
                    } // NavigationLink
                    .accentColor(Color("DarkTextPrimary")) // Change the accent color here
                }

                
                Divider()
                
                HStack { //Blog
                    
                    VStack (alignment: .leading) {
                        
                        Text("Read our blog")
                            .font(.title3)
                            .fontWeight(.medium)
                        
                        Text(
                            "Read and submit to our blog"
                        )
                        .font(.subheadline)
                        .fontWeight(.regular)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "arrow.forward.circle.fill")
                        .foregroundColor(Color("AccentPrimary"))
                        .imageScale(.large)
                    
                } //Blog
                
            
            }
            .padding(.horizontal, 30)
            .padding(.bottom, 50)
            

            Spacer()


        } //main container
        
    }
}

#Preview {
    ContentView()
}
