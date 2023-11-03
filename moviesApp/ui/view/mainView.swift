//
//  ContentView.swift
//  moviesApp
//
//  Created by Yusuf Gündüz on 1.11.2023.
//

import SwiftUI

struct mainView: View {
    
    @ObservedObject var viewModel = MainViewViewModel()
    
    var body: some View {
        NavigationStack{
            List {
                
                
                ForEach(viewModel.catList){ kategori in
                    
                     NavigationLink(destination: MoviesPage(kategori: kategori)) {
                       CategoriesBox(kategori:kategori)
                          }
                    
                    
                    
                }
                
             
            }.navigationTitle("Categories")
            
            
            
                .onAppear(){
                    
                    viewModel.catUp()
                    
                }
        }
        
        
        
    }
}

#Preview {
    mainView()
 }
