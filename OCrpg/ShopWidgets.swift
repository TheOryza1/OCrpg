//
//  ShopWidgets.swift
//  OCrpg
//
//  Created by Kaneis Zontanos on 11/26/23.
//

import SwiftUI

struct ShopWidgets {
    @State private var boosterCount = 0
    
    public func Widget(_ str: String) -> some View {
        return VStack {
            
            Image(str)
                .frame(width: 300, height: 300)
                .aspectRatio(contentMode: .fill)
                .clipShape(RoundedRectangle(cornerRadius: .infinity))
            
            HStack(spacing: 0) {
                Button {
                    if (boosterCount - 1 < 0) {
                        boosterCount = 0
                    } else {boosterCount -= 1}
                } label: {
                    Image(systemName: "arrowtriangle.backward.circle.fill")
                        .foregroundStyle(.black)
                        .font(.system(size: 40))
                }
                
                PlusBoost()
                
                Button {
                    if (boosterCount + 1 > 8) {
                        boosterCount = 8
                    } else {boosterCount += 1}
                } label: {
                    Image(systemName: "arrowtriangle.forward.circle.fill")
                        .foregroundStyle(.black)
                        .font(.system(size: 40))
                }
            }
            
        }
    }
    
    private func PlusBoost() -> some View {
        return HStack(spacing: 0) {
            ForEach(0..<boosterCount, id: \.self) { _ in
                Image(systemName: "capsule.portrait.fill")
                    .font(.system(size: 25))
            }
            
            ForEach(0..<8-boosterCount, id: \.self) { _ in
                Image(systemName: "capsule.portrait")
                    .font(.system(size: 25))
            }
        }
    }
}

