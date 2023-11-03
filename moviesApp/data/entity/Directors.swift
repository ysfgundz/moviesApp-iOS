//
//  Directors.swift
//  moviesApp
//
//  Created by Yusuf Gündüz on 1.11.2023.
//

import Foundation



class Directors:Identifiable,Codable {
    var yonetmen_id:String?
    var yonetmen_ad:String?
    
    
    init(){
        
    }
    
    
    init(yonetmen_id: String? = nil, yonetmen_ad: String? = nil) {
        self.yonetmen_id = yonetmen_id
        self.yonetmen_ad = yonetmen_ad
    }
    
    
    
    
}
