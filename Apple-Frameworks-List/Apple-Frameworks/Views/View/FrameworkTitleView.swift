//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Hector Saucedo Soledad on 11/21/24.
//

import SwiftUI

struct FrameworkTitleView: View {
    
    let framework : Framework
    
    var body: some View{
        
        HStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
        
    }
    
}

struct FrameworkTitleView_Previews: PreviewProvider{
    static var previews: some View{
        FrameworkTitleView(framework: MockData.sampleFramework)
    }
}
