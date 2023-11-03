//
//  MoviesBox.swift
//  moviesApp
//
//  Created by Yusuf Gündüz on 1.11.2023.
//

import SwiftUI

struct MoviesBox: View {
    
    
    var film = Movies()
    
    var body: some View {
        VStack(spacing:5){
            
            AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/filmler/resimler/\(film.film_resim!)")){ image in
                
                image.resizable()
                
            } placeholder: {
                 ProgressView()
            }
            Text(film.film_ad!)
            Text("Kaydet").onTapGesture {
                print("kaydedildi")
            }
            
        }
    }
}

/*#Preview {
    MoviesBox()
}
*/
