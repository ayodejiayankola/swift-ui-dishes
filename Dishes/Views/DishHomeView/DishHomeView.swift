//
//  DishList.swift
//  Dishes
//
//  Created by  Ayodeji Ayankola    on 19/05/2021.
//

import SwiftUI

struct DishHomeView: View {
    let dishes = Dish.getAllDishes()
    var body: some View {
        NavigationView {
            ScrollView(showsIndicators: false ) {
                LazyVStack(spacing: -10) {
                    ForEach(0..<self.dishes.count, id: \.self ) { index in
                        DishHomeViewCell(dish: self.dishes[index])
                    }
                }
            }
            .navigationBarTitle(Text("Dishes"))
        }.edgesIgnoringSafeArea(Edge.Set(.bottom))
    }
}

struct DishHomeView_Previews: PreviewProvider {
    static var previews: some View {
        DishHomeView()
    }
}
