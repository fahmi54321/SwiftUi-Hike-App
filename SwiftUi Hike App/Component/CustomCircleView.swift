//
//  CustomCircleView.swift
//  SwiftUi Hike App
//
//  Created by Fahmi Aziz on 12/08/23.
//

import SwiftUI

struct CustomCircleView: View {
    
    @State private var isAnimationGradient: Bool = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            Color("ColorIndigoMedium"),
                            Color("ColorSalmonLight")
                        ],
                        startPoint: isAnimationGradient ?  .topLeading : .bottomLeading,
                        endPoint: isAnimationGradient ? .bottomTrailing : .topTrailing
                    )
                )
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)){
                        isAnimationGradient.toggle()
                    }
                }
            .frame(width: 256,height: 256)
            
            MotionAnimationView()
        } // ZSTACK
        
    }
}

struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
