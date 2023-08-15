//
//  CustomButtonView.swift
//  SwiftUi Hike App
//
//  Created by Fahmi Aziz on 12/08/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack{
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .white,
                            .customGreenLight,
                            .customGreenMedium,
                            
                        ], startPoint: .top, endPoint: .bottom
                    )
                )
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium,
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: 4.0
                )
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 30.0))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGrayLight,
                            .customGrayMedium
                        ], startPoint: .top,
                        endPoint: .bottom
                    )
                )
            
        } // ZSTACK
        .frame(width: 58.0, height: 58.0)
    }
}

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
