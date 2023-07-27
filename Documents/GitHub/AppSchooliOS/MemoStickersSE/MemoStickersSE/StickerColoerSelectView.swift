//
//  StickerColoerSelectView.swift
//  MemoStickersSE
//
//  Created by 여성은 on 2023/07/07.
//

import SwiftUI

struct StickerColoerSelectView: View {
    @Binding var selectedColor: Color
    
    let color: Color
    
    var body: some View {
        Button {
            selectedColor = color
            print("color: \(color), selected: \(selectedColor)")
        } label: {
            ZStack{ //층층이 쌓는 위에서 바라보듯
                Rectangle()
                    .foregroundColor(color)
                    .shadow(radius: 5)
                    .frame(height: 65)
                if selectedColor == color {
                    Image(systemName: "checkmark")
                        .font(.title2)
                        .foregroundColor(.white)
                }//if
            }//Zstack
        }//button
    }
}

struct StickerColoerSelectView_Previews: PreviewProvider {
    static var previews: some View {
        StickerColoerSelectView(selectedColor: .constant(.yellow), color: .yellow)
    }
}
