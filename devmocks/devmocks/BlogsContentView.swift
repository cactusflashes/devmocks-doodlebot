//
//  BlogsContentView.swift
//  devmocks
//
//  Created by Joseph Andrew Salmon on 11/11/23.
//

import SwiftUI

struct BlogsContentView: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack { //main container

            Spacer()
            
            HStack {
                Spacer()

                VStack(alignment: .leading) { //header
                    
                    Text("Our Blog")
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color("DarkTextPrimary"))
                    
                    Text(" Relax with us")
                        .font(.system(size: 15))
                        .fontWeight(.regular)
                        .opacity(0.6)
                    
                } // header
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()

                VStack { //top button holder
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color("LightTextPrimary"))
                            .font(.system(size: 15))
                            .padding(20)
                            .background(Ellipse().fill(Color("MediumAccentSecondary")).frame(width: 40, height: 40))
                    })
                } //top button holder
                Spacer()


            }
            
            Spacer()
            Spacer()
            Spacer()


            VStack (alignment: .leading) {// write for us
                HStack {
                    Text("Write for our volunteer blog!")
                        .font(.system(size: 20))
                        .fontWeight(.medium)
                        .foregroundColor(Color("DarkTextPrimary"))
                    
                    Text("NEW")
                        .font(.system(size: 8))
                        .fontWeight(.medium)
                        .foregroundColor(Color("LightTextPrimary"))
                        .background(
                            RoundedRectangle(cornerRadius: 50)
                                .fill(Color("MediumAccentSecondary"))
                                .frame(width: 30, height: 15)
                        )
                        .padding(.bottom, 10)
                }
                
                Divider()
                    .frame(width: 300)
                    .background(Color("MediumAccentSecondary"))
                
                Text("We're always welcoming submissions for our blog on creativity, art, development, and any other topics you'd like to share with our audience.")
                    .frame(width: 320)
                    .foregroundColor(Color("DarkTextPrimary"))
                    .opacity(0.6)
                
            } //write for us
            .frame(width: 400, height: 180)
            .padding(.horizontal, -20)
            .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color("LightTextPrimary"))
                    .stroke(Color("StrokePrimary"), lineWidth: 1)
            )
            
            HStack {
                Image(systemName: "arrow.left.arrow.right.square.fill")
                    .foregroundColor(Color("MediumAccentSecondary"))
                    .opacity(0.8)

                
                
                Text("Scroll")
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                    .opacity(0.4)
                
            }
            .padding(.top, 8)
            .padding(.trailing, 240)
            
            HStack { //sideways scroll
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack { //sh stack
                        
                        Section {
                            VStack {
                                Text("Leveraging AI in Creative Work")
                                    .foregroundColor(Color("LightTextAlways"))
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color("MediumAccentPrimary"))
                                    .frame(width: 200, height: 100)
                            )
                        }
                        .frame(width: 200, height: 100)
                        
                        
                        Section {
                            VStack {
                                Text("Leveraging AI in Creative Work")
                                    .foregroundColor(Color("LightTextAlways"))
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color("MediumAccentPrimary"))
                                    .frame(width: 200, height: 100)
                            )
                        }
                        .frame(width: 200, height: 100)
                        
                        
                        Section {
                            VStack {
                                Text("Leveraging AI in Creative Work")
                                    .foregroundColor(Color("LightTextAlways"))
                                
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color("MediumAccentPrimary"))
                                    .frame(width: 200, height: 100)
                            )
                        }
                        .frame(width: 200, height: 100)
                        
                    } //Sh stack
                    .padding(10)

                    
                } // scrollend
                .background(
                RoundedRectangle(cornerRadius: 40)
                    .fill(Color("LightTextPrimary"))
                    .stroke(Color("StrokePrimary"), lineWidth: 1.5)

                )
                .cornerRadius(40)


                    
            }
            .padding(.horizontal, 20)

            HStack {
                Image(systemName: "arrow.up.arrow.down.square.fill")
                    .foregroundColor(Color("MediumAccentSecondary"))
                    .opacity(0.8)

                Text("Scroll")
                    .font(.system(size: 12))
                    .fontWeight(.semibold)
                    .opacity(0.4)
                
            }
            .padding(.top, 8)
            .padding(.trailing, 240)


                    VStack (alignment: .leading) {// vertlist
                        ScrollView {
                            Section {
                                VStack {
                                    Text("hellp")
                                        .foregroundColor(Color("LightTextAlways"))
                                }
                            }
                            .frame(height: 100)
                            .frame(maxWidth: .infinity)
                            .background(
                                RoundedRectangle(cornerRadius: 40)
                                    .fill(Color("MediumAccentPrimary"))

                            )
                            .padding(.vertical, 20)
                            .padding(.horizontal, 10)

                            
                            
                        }//scrollview
                        .cornerRadius(40)

                    } //vertlist
                        .frame(height: 300)
                        .background(
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color("LightTextPrimary"))
                                .stroke(Color("StrokePrimary"), lineWidth: 1)

                        )
                        .padding(.horizontal, 20)

                    
            } //main container
                .frame(maxHeight: .infinity)
                .background(
                    Rectangle()
                        .fill(Color("BackgroundPrimary"))
                        .ignoresSafeArea()
                )
        

                    
    }
                    
}
                    
#Preview {
    BlogsContentView()
}
