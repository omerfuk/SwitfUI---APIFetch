//
//  ContentView.swift
//  ApiCallStudyClone
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import SwiftUI
import Kingfisher

struct ContentView: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        
        NavigationView {
            List {
               
                ForEach(viewModel.courses) { course in
                    HStack{
                        KFImage(URL(string: course.image))
                            .resizable()
                            .frame(width: 150, height: 70)
                            .background(.gray)
                            .cornerRadius(15)
                            .shadow(color: .black, radius: 5, x: 0, y: 5)
                        
                        Text(course.name)
                            .bold()
                    }
                }
                
                    
            }
            .navigationTitle("Courses")
            .onAppear {
                viewModel.fetchData()
            }
            
            
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
