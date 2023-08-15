//
//  CustomBackgoundView.swift
//  SwiftUi Hike App
//
//  Created by Fahmi Aziz on 11/08/23.
//

import SwiftUI

struct CustomBackgoundView: View {
    var body: some View {
        ZStack{
            // MARK: 3. DEPTH
            Color.customGreenDark
                .cornerRadius(40.0)
                .offset(y: 12)
            
            // MARK: 2. LIGHT
            Color.customGreenLight
                .cornerRadius(40.0)
                .offset(y: 3)
                .opacity(0.85)
            LinearGradient(
                colors: [
                    .customGreenLight,
                    .customGreenMedium
                ], startPoint: .top,
                endPoint: .bottom
            ).cornerRadius(40.0)
        }
    }
}

struct CustomBackgoundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgoundView()
            .padding()
    }
}
