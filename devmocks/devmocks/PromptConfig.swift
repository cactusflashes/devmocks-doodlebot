//
//  PromptConfig.swift
//  devmocks
//
//  Created by Joseph Andrew Salmon on 11/10/23.
//

import SwiftUI

struct PromptConfig: View {
    @State private var sliderValue: Double = 50
    @State private var emojiiText = "😐"
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        VStack { //main container
            
            VStack { //top button holder
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color("DarkTextAlways"))
                        .font(.system(size: 15))
                        .padding(20)
                        .background(Ellipse().fill(Color("LightTextAlways")).frame(width: 40, height: 40))
                })
            } //top button holder
            
            Spacer()
            
            Text(emojiiText)
                .foregroundColor(Color("LightTextAlways"))
                .font(.system(size: 100))
                .background(
                    RoundedRectangle(cornerRadius: 40)
                        .fill(Color("BackgroundPrimary"))
                        .frame(width: 150, height: 150)
                )
                .padding(.bottom, 50)
            
            Text("Select the tone of your prompt.")
                .foregroundColor(Color("LightTextAlways"))
                .font(.system(size: 15))
        
            
            VStack { //tone slider
                HStack {
                    Text("😔")
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color("AccentPrimary"))
                                .frame(width: 35, height: 50)
                        )
                    Spacer()
                    Spacer()

                    
                    Slider(value: $sliderValue, in: 0...100, step: 1.0)
                        .accentColor(Color("BackgroundPrimary"))
                        .onChange(of: sliderValue) {
                            updateText()
                        }
                    
                    Spacer()
                    Spacer()
                    
                    Text("😁")
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .frame(width: 35, height: 50)
                        )
                }
                

                
            }//tone slider
            .frame(width: 320)
            
            Spacer()
            Spacer()
            
        } //main container
        .frame(maxHeight: .infinity)
        .frame(maxWidth: .infinity)
        .background(
            Rectangle()
                .fill(Color("MediumAccentPrimary"))
                .ignoresSafeArea()
        )
        
        
    }
    
    func updateText() {
        if sliderValue < 25 {
            emojiiText = "😞"
        } else if sliderValue > 25 && sliderValue < 50 {
            emojiiText = "😕"
        } else if sliderValue >= 50 && sliderValue < 75 {
            emojiiText = "😌"
        } else if sliderValue > 75 {
            emojiiText = "😄"
        }
    }
    
    
}









#Preview {
    PromptConfig()
}
