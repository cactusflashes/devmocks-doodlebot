//
//  Create.swift
//  devmocks
//
//  Created by Joseph Andrew Salmon on 11/5/23.
//

import SwiftUI

struct Create: View {
    var body: some View {
        VStack { //main
            VStack { //header?
                Text("How do you feel?")
                    .font(.system(size: 60))
                    .multilineTextAlignment(.center)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("DarkTextPrimary"))
                    .frame(width: 300)
            } //header?
            
            ScrollView (.horizontal, showsIndicators: false) {
                
                HStack {
                    Spacer()
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color("AltBackgroundPrimary"))
                        .stroke(Color("StrokePrimary"))
                        .frame(width: 200, height: 200)
                    
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color("AltBackgroundPrimary"))
                        .stroke(Color("StrokePrimary"))
                        .frame(width: 200, height: 200)
                    
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .fill(Color("AltBackgroundPrimary"))
                        .stroke(Color("StrokePrimary"))
                        .frame(width: 200, height: 200)
                    Spacer()
                }
            }
            .frame(maxWidth: .infinity)
            .frame(height: 300)
            
        } //main stack
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
        Rectangle()
            .fill(Color("BackgroundPrimary"))
            .frame(maxWidth: .infinity, maxHeight: .infinity)

        )
        .ignoresSafeArea()
        .accentColor(Color("DarkTextPrimary"))
    }
}

#Preview {
    Create()
}
