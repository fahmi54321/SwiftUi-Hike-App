//
//  CustomListRowView.swift
//  SwiftUi Hike App
//
//  Created by Fahmi Aziz on 14/08/23.
//

import SwiftUI

struct CustomListRowView: View {
    
    // MARK: PROPERTIES
    
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String? = nil
    @State var rowTintColor: Color
    @State var rowLinkLabel: String? = nil
    @State var rowLinkDestination: String? = nil
    
    var body: some View {
        LabeledContent{
            //Content
            if rowContent != nil {
                Text(rowContent!)
                    .foregroundColor(.primary)
                    .fontWeight(.heavy)
            } else if(rowLinkLabel != nil && rowLinkDestination != nil){
                Link(rowLinkLabel!, destination: URL(string: rowLinkDestination!)!
                )
                .foregroundColor(.pink)
                .fontWeight(.heavy)
            }
            else {
                /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
            }
        }label: {
            HStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 8.0)
                        .frame(width: 30.0,height: 30.0)
                        .foregroundColor(rowTintColor)
                    Image(systemName: rowIcon)
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                }
                Text(rowLabel)
            }
        }
    }
}

struct CustomListRowView_Previews: PreviewProvider {
    static var previews: some View {
        List {
            CustomListRowView(
                rowLabel: "Designer",
                rowIcon: "paintpalette",
                rowContent: "John Doe",
                rowTintColor: .pink
            )
        }
    }
}
