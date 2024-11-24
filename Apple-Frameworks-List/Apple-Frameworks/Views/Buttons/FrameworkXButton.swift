//
//  FrameworkXButton.swift
//  Apple-Frameworks
//
//  Created by Hector Saucedo Soledad on 11/21/24.
//

import SwiftUI

struct FrameworkXButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack{
            Spacer()
            Button{
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
            
        }.padding()
    }
}

struct FrameworkXButton_Previews: PreviewProvider{
    static var previews: some View{
        FrameworkXButton(isShowingDetailView: .constant(false))
    }
}
