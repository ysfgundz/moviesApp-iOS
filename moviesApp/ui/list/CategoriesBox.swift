//
//  CategoriesBox.swift
//  moviesApp
//
//  Created by Yusuf Gündüz on 1.11.2023.
//

import SwiftUI

struct CategoriesBox: View {
    
    var kategori = Kategoriler()
    
    
    var body: some View {
        Text(kategori.kategori_ad!)
    }
}

/*#Preview {
    CategoriesBox()
}
*/
