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
    @State private var creationWorkflow: Bool = false
    @State private var blogsView: Bool = false
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        
        
        VStack { //main vertical stack
            
            
            
            
            ScrollView (showsIndicators: false) {
                
                
                // below here is the header section
                
                HStack {
                    
                    VStack (alignment: .leading) { //header
                        Text("Good " + greeting)
                            .font(.system(size: 20))
                            .fontWeight(.regular)
                            .foregroundColor(Color("DarkAccentPrimary"))
                        
                        Text(Date.now.formatted(date: .long, time: .omitted))
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color("DarkAccentPrimary"))
                        
                    }
                    .padding(.trailing, 120)
                    
                    
                } //header
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color("LighterBackgroundPrimary"))
                        .stroke(Color("StrokePrimary"), lineWidth: 0.5)
                        .frame(height: 100)
                )
                .padding(.horizontal, 10)
                //.padding(.trailing, 60)
                // above here is the header section
                
                Spacer()
                
                // below here is mid content block 1
                Section{ //container bg
                    VStack { //container bg
                        HStack {
                            Spacer()
                            
                            VStack {
                                Image(systemName: "sun.max")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color("LightTextAlways"))
                                
                                Text("New")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color("LightTextAlways"))
                            }
                            .background(
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color("MediumAccentPrimary"))
                                    .frame(width: 35, height: 50)
                            )
                            
                            
                            VStack (alignment: .leading){ //DP header stack
                                
                                Text("Today's Prompt")
                                    .font(.system(size: 30))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("DarkAccentPrimary"))
                                
                                Text(" New Prompts Everyday")
                                    .font(.system(size: 15))
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color("DarkAccentPrimary"))
                                    .opacity(0.5)
                            } //DP header stack
                            .padding(.leading, 10)
                            
                            Spacer()
                            Spacer()
                            Spacer()
                            
                            
                        }
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
                            .padding(.horizontal, 10)
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
                
                // below here is mid content block 2
                Section{ //container bg
                    VStack { //container bg
                        
                        HStack {
                            Spacer()
                            
                            VStack {
                                Image(systemName: "brain.filled.head.profile")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color("DarkAccentPrimary"))
                                
                                Text("AI")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color("DarkAccentPrimary"))
                            }
                            .background(
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color("BackgroundPrimary"))
                                    .frame(width: 35, height: 50)
                            )
                            
                            
                            
                            VStack (alignment: .leading){ //DP header stack
                                Text("AI Generation")
                                    .font(.system(size: 20))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("LightTextAlways"))
                                
                                Text("Create your own prompts")
                                    .font(.system(size: 15))
                                    .foregroundColor(Color("LightTextAlways"))
                                    .opacity(0.5)
                            } //DP header stack
                            .padding(.leading, 10)
                            
                            Spacer()
                            
                            VStack {
                                Text("Open")
                                    .foregroundColor(Color("DarkAccentPrimary"))
                                    .font(.system(size: 15))
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 4)
                                
                            }
                            .background(
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color("BackgroundPrimary"))
                            )
                            
                            
                            Spacer()
                            
                            
                        }
                        .frame(height: 120)
                        
                        
                    } //container bg
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 40)
                            .fill(Color("MediumAccentPrimary"))
                            .stroke(Color("StrokePrimary"), lineWidth: 0.5)
                            .padding(.horizontal, 10)
                    )
                } // section container bg
                .onTapGesture {
                    creationWorkflow.toggle()
                }
                .fullScreenCover(isPresented: $creationWorkflow, content: {
                    CreationWorkflow()
                })
                
                
                
                
                
                // above here is mid content block 2
                
                Spacer()
                
                // below here is mid content block 3
                Section{ //container bg
                    VStack { //container bg
                        
                        HStack {
                            Spacer()
                            
                            VStack {
                                Image(systemName: "book.pages")
                                    .font(.system(size: 20))
                                    .foregroundColor(Color("LightTextAlways"))
                                
                                Text("3")
                                    .font(.system(size: 10))
                                    .foregroundColor(Color("LightTextAlways"))
                            }
                            .background(
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color("MediumAccentPrimary"))
                                    .frame(width: 35, height: 50)
                            )
                            
                            
                            VStack (alignment: .leading){ //DP header stack
                                Text("Read our Blog")
                                    .font(.system(size: 20))
                                    .fontWeight(.medium)
                                    .foregroundColor(Color("DarkAccentPrimary"))
                                
                                Text("Read & submit to our blog")
                                    .font(.system(size: 15))
                                    .foregroundColor(Color("DarkAccentPrimary"))
                                    .opacity(0.5)
                            } //DP header stack
                            .padding(.leading, 10)
                            
                            Spacer()
                            
                            VStack {
                                Text("Open")
                                    .foregroundColor(Color("LightTextAlways"))
                                    .font(.system(size: 15))
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 4)
                                
                            }
                            .background(
                                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                    .fill(Color("MediumAccentPrimary"))
                            )
                            
                            
                            Spacer()
                            
                            
                        }
                        .frame(height: 120)
                        
                        
                    } //container bg
                    .frame(maxWidth: .infinity)
                    .background(
                        RoundedRectangle(cornerRadius: 40)
                            .fill(Color("BackgroundPrimary"))
                            .stroke(Color("StrokePrimary"), lineWidth: 0.5)
                            .padding(.horizontal, 10)
                    )
                } // section container bg
                .onTapGesture {
                    blogsView.toggle()
                }
                .fullScreenCover(isPresented: $blogsView, content: {
                    BlogsContentView()
                })
                
                
                // above here is mid content block 3
                
                Spacer()
                
                // below here is bottom content block
                VStack (alignment: .leading) { //bottom section
                    Text("Join the Community")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color("DarkAccentPrimary"))
                    Divider()
                    HStack { //past prompts hori
                        VStack (alignment: .leading) {
                            Text("Join our Discord")
                                .font(.system(size: 15))
                                .fontWeight(.medium)
                                .foregroundColor(Color("DarkAccentPrimary"))
                            
                            Text("Join our Discord Server")
                                .font(.system(size: 12))
                                .fontWeight(.regular)
                                .foregroundColor(Color("DarkAccentPrimary"))
                                .opacity(0.5)
                        }
                        Spacer()
                        Image(systemName: "arrow.forward.circle")
                            .foregroundColor(Color("MediumAccentSecondary"))
                            .imageScale(.large)
                    } //past prompts
                    Divider()
                    Section{
                        NavigationLink(destination: DailyPrompt()) {
                            HStack { //Create your own
                                VStack (alignment: .leading) {
                                    Text("Follow us")
                                        .font(.system(size: 15))
                                        .fontWeight(.medium)
                                        .foregroundColor(Color("DarkAccentPrimary"))
                                    
                                    Text("Our social media")
                                        .font(.system(size: 12))
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("DarkAccentPrimary"))
                                        .opacity(0.5)
                                    
                                }
                                Spacer()
                                Image(systemName: "arrow.forward.circle")
                                    .foregroundColor(Color("MediumAccentSecondary"))
                                    .imageScale(.large)
                            }
                        } // NavigationLink
                        .foregroundColor(Color("DarkAccentPrimary"))
                    }
                    Divider()
                    HStack { //Blog
                        VStack (alignment: .leading) {
                            Text("About")
                                .font(.system(size: 15))
                                .fontWeight(.medium)
                                .foregroundColor(Color("DarkAccentPrimary"))
                            
                            Text(
                                "Who we are"
                            )
                            .font(.system(size: 12))
                            .fontWeight(.regular)
                            .foregroundColor(Color("DarkAccentPrimary"))
                            .opacity(0.5)
                            
                        }
                        Spacer()
                        Image(systemName: "arrow.forward.circle")
                            .foregroundColor(Color("MediumAccentSecondary"))
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
                        .padding(.horizontal, 10)
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
        .zIndex(0)
        
    }
}


#Preview {
    ContentView()
}
