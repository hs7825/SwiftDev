//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Hector Saucedo Soledad on 11/19/24.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 280, height: 50)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)

    }
}

struct AFButton_Previews : PreviewProvider{
    static var previews: some View{
        AFButton(title: "Test Title")
    }
}
