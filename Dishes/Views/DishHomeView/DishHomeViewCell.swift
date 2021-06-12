//
//  DishCell.swift
//  Dishes
//
//  Created by  Ayodeji Ayankola   on 19/05/2021.
//

import SwiftUI

struct DishHomeViewCell: View {
    let dish: Dish
    var body: some View {
        dishCellSetup(dish)
    }
}

func dishCellSetup(_ dish: Dish) -> some View {
    HStack {
        dishImage(dish)
        dishNameAndPrice(dish)
        Spacer()
    }.padding(10)
}

func dishImage(_ dish: Dish) -> some View {
    Image(dish.imageURL)
        .resizable()
        .frame(width: 100, height: 100)
        .clipShape(RoundedRectangle(cornerRadius: 11.0))
}

func dishNameAndPrice(_ dish: Dish) -> some View {
    VStack(alignment: .leading) {
        Text(dish.name)
            .font(.system(size: 15, weight: .medium, design: .rounded))
        Text(String(format: "N%.2f", dish.price))
            .font(.system(size: 13,
                          weight: .medium,
                          design: .rounded))
    }
}


struct DishHomeViewCell_Previews: PreviewProvider {
    static var previews: some View {
        //let ddd = Dish.all()[0]
        DishHomeViewCell(dish: Dish(name: "Filet Mignon", price: 300, imageURL: "e1"))
            .previewLayout(.sizeThatFits)
//        Group {
//            let dd = ContentSizeCategory.extraLarge
//            DishCell().previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraSmall)
//
//            DishCell().previewLayout(.sizeThatFits).environment(\.sizeCategory, .extraExtraLarge)
//        }
    }
}
