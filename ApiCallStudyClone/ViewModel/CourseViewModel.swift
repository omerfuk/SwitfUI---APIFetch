//
//  CourseViewModel.swift
//  ApiCallStudyClone
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import Foundation

class ViewModel: ObservableObject {
    
    
    @Published var courses: [Course] = []
    
    var urlString = "https://iosacademy.io/api/v1/courses/index.php"
    
    
    
    func fetchData() {
        
        guard let url = URL(string: urlString) else{return}
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else{return}
            
            do{
                
                let courses = try JSONDecoder().decode([Course].self, from: data)
                
                DispatchQueue.main.async {
                    self.courses = courses
                }
                
            }catch{
                print(error)
            }
            
        }
        .resume()
        
    }
    
}
