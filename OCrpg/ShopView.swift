//
//  ShopView.swift
//  OCrpg
//
//  Created by Kaneis Zontanos on 11/26/23.
//

import SwiftUI

struct ShopView: View {
    @State private var shopWidget = ShopWidgets()
    let images = ["Click", "Dmaage", "Hp", "Regen", "Resister", "Slow", "Time"]
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(images, id: \.self) {shopWidget.Widget($0)}
            }
            .navigationTitle("Shop")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    ShopView()
}
