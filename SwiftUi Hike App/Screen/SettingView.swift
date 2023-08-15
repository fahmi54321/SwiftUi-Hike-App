//
//  SettingView.swift
//  SwiftUi Hike App
//
//  Created by Fahmi Aziz on 14/08/23.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List{
            // MARK: - SECTION: HEADER
            Section{
                HStack{
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80.0,weight: .black))
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66.0,weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80.0,weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark], startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .padding(.top,8.0)
                
                VStack(spacing: 8.0){
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom,16.0)
                .frame(maxWidth: .infinity)
                
                
            }// HEADER
            .listRowSeparator(.hidden)
            
            // MARK: - SECTION: ICONS
            
            // MARK: - SECTION: ABOUT
            
            Section(
                header: Text("About The App"),
                footer: HStack{
                    Spacer()
                    Text("Copyright All right reseved.")
                    Spacer()
                }.padding(.vertical,8.0)){
                    
                    // 1. Basic Labeled Content
                    // LabeledContent("Application", value: "Hike")
                    
                    // 2. Advanced Labeled COntent
                    CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "Hike", rowTintColor: .blue)
                    
                    CustomListRowView(rowLabel: "Compatibility", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                    
                    CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                    
                    CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "John Doe", rowTintColor: .mint)
                    
                    CustomListRowView(rowLabel: "Designer", rowIcon: "paintpalette", rowContent: "Robert Petras", rowTintColor: .pink)
                    
                    CustomListRowView(rowLabel: "Website", rowIcon: "globe", rowContent: nil, rowTintColor: .indigo,rowLinkLabel: "Google",rowLinkDestination: "http://google.com")
                }
        }
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
