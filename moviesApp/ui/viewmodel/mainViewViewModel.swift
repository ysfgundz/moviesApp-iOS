//
//  mainViewViewModel.swift
//  moviesApp
//
//  Created by Yusuf Gündüz on 1.11.2023.
//

import Foundation
import Alamofire


class MainViewViewModel:ObservableObject {
    
    @Published var catList = [Kategoriler]()
    
    
    func catUp(){
        
        
        let url = "http://kasimadalan.pe.hu/filmler/tum_kategoriler.php"
        
        AF.request(url, method: .get).response { response in
            
            if let data = response.data {
                do {
                    let cevap = try JSONDecoder().decode(CategoriesAnswer.self, from: data)
                    
                    
                    if let liste = cevap.kategoriler {
                        
                        DispatchQueue.main.async {
                            self.catList = liste
                        }
                        
                    }
                    
                
                }catch{
                    
                    
                    print(error.localizedDescription)
                }
                
                
                
                
            }
            
            
            
            
            
        }
        
        
        
    }
    
    
    
}

