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

//refresh func
func refreshData() async {
    // do work to asyncronously refresh your data here
    try? await Task.sleep(nanoseconds: 1_000_000_000)
}

struct ContentView: View {
    @State private var showPrompt: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack { //main vertical stack
            ScrollView (showsIndicators: false) {
            
                Spacer()
                // below here is the header section
                Spacer()
                Spacer()

                VStack (alignment: .leading) { //header
                    Text("Good " + greeting)
                        .font(.system(size: 24))
                        .fontWeight(.light)
                        .foregroundColor(Color("DarkTextPrimary"))
                    
                    Text(Date.now.formatted(date: .long, time: .omitted))
                        .font(.system(size: 28))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("DarkTextPrimary"))
                } //header
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(.trailing, 60)
                // above here is the header section
                
                Spacer()
                Spacer()
                Spacer()
                
                // below here is mid content block 1
                Section{ //container bg
                        VStack { //container bg
                            VStack (alignment: .leading){ //DP header stack
                                Text("daily create")
                                    .font(.system(size: 15))
                                    .textCase(.uppercase)
                                    .kerning(2)
                                    .foregroundColor(Color("DarkTextPrimary"))
                                
                                Text("Today's Prompt")
                                    .font(.system(size: 30))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("DarkTextPrimary"))
                            } //DP header stack
                            .padding(.trailing, 80)
                            .padding(.top, 20)
                            ZStack {
                                Image("Doodle")
                                    .resizable()
                                    .scaledToFit()
                                    .rotationEffect(.degrees(10))
                                    .frame(width: 300)
                            }
                            .padding(.horizontal, -20)
                            
                            Spacer()
                            
                            
                        } //container bg
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color("BackgroundPrimary"))
                                .stroke(Color("StrokePrimary"), lineWidth: 0.5)
                                .padding(.horizontal, 20)
                        )

                    
                    
                } // section container bg
                .onTapGesture {
                    showPrompt.toggle()
                }
                .fullScreenCover(isPresented: $showPrompt, content: {
                    DailyPrompt()
                })
                
                
                
                // above here is mid content block 1

                Spacer()
                Spacer()
            
                // below here is mid content block 2
                Section{ //container bg
                        VStack { //container bg
                            HStack {
                                Spacer()
                                ZStack {
                                    Image("Doodle")
                                        .resizable()
                                        .scaledToFit()
                                        .rotationEffect(.degrees(10))
                                        .frame(width: 100)
                                        .scaleEffect(x: -1, y: 1)  // flip!
                                }
                                
                                
                                
                                VStack (alignment: .trailing){ //DP header stack
                                    Text("create your own")
                                        .font(.system(size: 12))
                                        .textCase(.uppercase)
                                        .kerning(2)
                                        .foregroundColor(Color("DarkTextPrimary"))
                                    
                                    Text("AI Generation")
                                        .font(.system(size: 25))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("DarkTextPrimary"))
                                } //DP header stack
                                Spacer()

                            }
                            .frame(height: 150)
                            
                            Spacer()
                            
                        } //container bg
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color("AltBackgroundPrimaryThird"))
                                .stroke(Color("StrokePrimary"), lineWidth: 0.5)
                                .padding(.horizontal, 20)
                        )
                } // section container bg
                // above here is mid content block 2
         
                Spacer()
                Spacer()

                // below here is mid content block 3
                Section{ //container bg
                        VStack { //container bg
                            HStack {
                                Spacer()
                                VStack (alignment: .leading){ //DP header stack
                                    Text("Get Inspired")
                                        .font(.system(size: 12))
                                        .textCase(.uppercase)
                                        .kerning(2)
                                        .foregroundColor(Color("DarkTextPrimary"))
                                    
                                    Text("Read our Blog")
                                        .font(.system(size: 25))
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color("DarkTextPrimary"))
                                } //DP header stack
                                
                                ZStack {
                                    Image("Doodle")
                                        .resizable()
                                        .scaledToFit()
                                        .rotationEffect(.degrees(10))
                                        .frame(width: 100)
                                }
                                
                                Spacer()

                            }
                            .frame(height: 150)
                            
                            
                        } //container bg
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color("AltBackgroundPrimary"))
                                .stroke(Color("StrokePrimary"), lineWidth: 0.5)
                                .padding(.horizontal, 20)
                        )
                } // section container bg
                // above here is mid content block 3
                
                Spacer()
                Spacer()
                
                // below here is bottom content block
                VStack (alignment: .leading) { //bottom section
                    Text("More from us")
                        .font(.title3)
                        .fontWeight(.medium)
                        .foregroundColor(Color("DarkTextPrimary"))
                    Divider()
                    HStack { //past prompts hori
                        VStack (alignment: .leading) {
                            Text("Join our Discord")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(Color("DarkTextPrimary"))

                            Text("Join our Discord Server")
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color("DarkTextPrimary"))
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
                                    Text("Follow us")
                                        .font(.title3)
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("DarkTextPrimary"))
                                    
                                    Text("Our social media")
                                        .font(.subheadline)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("DarkTextPrimary"))
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
                            Text("About")
                                .font(.title3)
                                .fontWeight(.medium)
                                .foregroundColor(Color("DarkTextPrimary"))
                            
                            Text(
                                "Who we are"
                            )
                            .font(.subheadline)
                            .fontWeight(.regular)
                            .foregroundColor(Color("DarkTextPrimary"))
                        }
                        Spacer()
                        Image(systemName: "arrow.forward.circle.fill")
                            .foregroundColor(Color("AccentPrimary"))
                            .imageScale(.large)
                    } //Blog
                } //end bottom section
                .frame(maxWidth: .infinity)
                .padding(.horizontal, 40)
                .padding(.vertical, 30)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color("LighterBackgroundPrimary"))
                        .stroke(Color("StrokePrimary"), lineWidth: 0.5)
                        .padding(.horizontal, 20)
                )
                
                Spacer()
                Spacer()
                
            }//scrollview
            .refreshable {
                await refreshData()
            }
            
            

            
        } //main stack
        .frame(maxHeight: .infinity)
        .background(
            Rectangle()
                .fill(Color("LightTextPrimary"))
                .ignoresSafeArea()
        )

    }
}

#Preview {
    ContentView()
}
