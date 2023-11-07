//
//  DailyPrompt.swift
//  devmocks
//
//  Created by Joseph Andrew Salmon on 11/3/23.
//

import SwiftUI

var promptTitle: String = "A Study in Color"

struct DailyPrompt: View {
    @State private var isBlurred = true
    @Environment(\.presentationMode) var presentationMode

    var body: some View {

        VStack { //main
            
            VStack { //top button holder
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color("LightTextPrimary"))
                        .font(.system(size: 15))
                        .padding(20)
                        .background(Ellipse().fill(Color("DarkTextPrimary")).frame(width: 40, height: 40))
                })
            } //top button holder
            .padding(.leading, 280)
            
            Spacer()
            
            Text(Date.now.formatted(date: .long, time: .omitted))
                .font(.title3)
            
            Text(promptTitle)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            
            Spacer()
            
            Section { //card section
                
                VStack {
                    
                    Text("Tap to reveal")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("DarkTextPrimary"))
                        .offset(y: 90)
                        .opacity(isBlurred ? 1 : 0)
                        .animation(.spring(duration: 0.4), value: isBlurred) // Adjust the duration here

                    ZStack {
                        Text("Create a scene that depict's people's moods as colors that surround them as auras.")
                            .multilineTextAlignment(.center)
                            .font(.system(size: 30))
                            .frame(width: 300)
                            .fontWeight(.heavy)
                            .foregroundColor(isBlurred ? (Color("AltBackgroundPrimary")) : (Color("DarkAccentPrimary")))
                    }
                    .blur(radius: isBlurred ? 10 : 0)
                    
                }
                
                
                
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 400)
            .background(
                RoundedRectangle(cornerRadius: isBlurred ? 100 : 40)
                    .stroke(Color("StrokePrimary"), lineWidth: 1)
                    .fill(isBlurred ? (Color("AltBackgroundPrimary")) : (Color("LighterBackgroundPrimary")) )
                    .blur(radius: isBlurred ? 5 : 0)
            )
            .padding(.horizontal, 20)
            .onTapGesture {
                withAnimation(.spring(duration: 0.8)) {
                    isBlurred.toggle()
                }
            }



                
            Spacer()

        }
        .frame(maxHeight: .infinity)
        .frame(maxWidth: .infinity)

        .background(
            Rectangle()
                .fill(Color("BackgroundPrimary"))
                .ignoresSafeArea()
            )
    }
}

#Preview {
    DailyPrompt()
}
