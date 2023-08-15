//
//  CardView.swift
//  SwiftUi Hike App
//
//  Created by Fahmi Aziz on 11/08/23.
//

import SwiftUI

struct CardView: View {
    
    // MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    // MARK: - Functions
    
    func randomImage(){
        
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        
        imageNumber = randomNumber
    }
    
    
    var body: some View {
        // MARK: - CARD
        ZStack {
            CustomBackgoundView()
            VStack {
                
                // MARK: - HEADER
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52.0))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [
                                        .customGrayLight,
                                        .customGrayMedium
                                    ], startPoint: .top,
                                    endPoint: .bottom
                                )
                        )
                        
                        Spacer()
                        
                        Button(action: {
                            isShowingSheet.toggle()
                            
                        }, label: {
                            CustomButtonView()
                        }).sheet(isPresented: $isShowingSheet, content: {
                            SettingView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium,.large])
                        })
                        
                        
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } //: HEADER
                .padding(.horizontal, 30.0)
                
                // MARK: - MAIN CONTENT
                
                ZStack {
                    CustomCircleView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                    
                }
                
                // MARK: - FOOTER
                
                Button(action: {
                    randomImage()
                }, label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight,.customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25),
                                radius: 0.25,
                                x: 1,
                                y: 2
                        )
                }
                    
                ).buttonStyle(GradientButton())
            } // : ZSTACK
        } // : CARD
        .frame(width: 320.0,height: 570.0)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
