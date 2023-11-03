//
//  MoviesPage.swift
//  moviesApp
//
//  Created by Yusuf Gündüz on 1.11.2023.
//

import SwiftUI

struct MoviesPage: View {
    
    var kategori = Kategoriler()
    @ObservedObject var view = movieViewModel()
    
    var body: some View {
        GeometryReader { geometry in
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.flexible()),GridItem(.flexible())], spacing: 20) {
                    ForEach(view.filmlerListe){ films in
                        NavigationLink(destination: DetailsPage(filmler: films)){
                            
                            
                            MoviesBox(film: films)
                            
                            
                        }
                        
                        
                        
                        
                    }



                }.padding()
                
                
                
                
                
            }
            
            .onAppear(){
                
                view.moviesUp(kategori_id: Int(kategori.kategori_id!)!)
                
            }
            
            
            
            
            
            
            
            
        }
    }
}

#Preview {
    MoviesPage()
}
