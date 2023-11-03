//
//  DetailsPage.swift
//  moviesApp
//
//  Created by Yusuf Gündüz on 1.11.2023.
//

import SwiftUI

struct DetailsPage: View {
    var filmler = Movies()
    var body: some View {
        ScrollView{
            VStack{
                
                AsyncImage(url: URL(string: "http://kasimadalan.pe.hu/filmler/resimler/\(filmler.film_resim!)"))
                
                Text(filmler.film_ad!)
                
                Text("Yönetmen: \(filmler.yonetmen!.yonetmen_ad!)")
                Text(filmler.film_yil!)
                Button("Satın Al"){
                    print("Satın Alındı.")
                }.foregroundColor(.white).frame(width: 200,height: 35).background(.pink).cornerRadius(10)
            }.navigationTitle(filmler.film_ad!)
        }
    }
}

/*#Preview {
    DetailsPage()
}
*/
