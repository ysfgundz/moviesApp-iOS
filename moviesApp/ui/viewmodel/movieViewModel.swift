//
//  movieViewModel.swift
//  moviesApp
//
//  Created by Yusuf Gündüz on 1.11.2023.
//

import Foundation
import Alamofire


class movieViewModel:ObservableObject {
    @Published var filmlerListe = [Movies]()
    
    
    func moviesUp(kategori_id:Int){
        
        let url = "http://kasimadalan.pe.hu/filmler/filmler_by_kategori_id.php"
        let params:Parameters = ["kategori_id":kategori_id]
        AF.request(url, method: .post, parameters: params).response { response in
        
            if let data = response.data {
                
                do{
                    
                    let cevap = try JSONDecoder().decode(MoviesAnswer.self, from: data)
                    
                    if let liste = cevap.filmler {
                        
                        DispatchQueue.main.async {
                            self.filmlerListe = liste
                        }
                    }
                    
                    
                }catch{
                    print(error.localizedDescription)
                }
                
                
                
            }
            
            
            
            
            
        }
        
        
        
        
    }
    
    
    
}



