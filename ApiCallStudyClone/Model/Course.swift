//
//  Course.swift
//  ApiCallStudyClone
//
//  Created by Ömer Faruk Kılıçaslan on 22.07.2022.
//

import Foundation


struct Course: Identifiable, Hashable, Codable {
    
    let id: UUID = UUID()
    let name: String
    let image: String
    
}
