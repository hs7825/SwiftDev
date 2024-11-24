//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Hector Saucedo Soledad on 11/19/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    
    var body: some View {
        NavigationView{
            List{
                ForEach(MockData.frameworks){ framework in
                    NavigationLink(destination:
                                    FrameworkDetailView(framework: framework,
                                                        isShowingDetailView: $viewModel.isShowingDetailView)){
                        FrameworkTitleView(framework: framework)
                        
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
                
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider{
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}



struct FrameworkInfoView: View{
    
    let framework: Framework
    
    
    var body: some View{
        
        VStack{
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
            Text(framework.description)
        }
        .padding()
    }
}
