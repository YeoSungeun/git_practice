//
//  StickerView.swift
//  MemoStickersSE
//
//  Created by 여성은 on 2023/07/07.
//

import SwiftUI

struct StickerView: View {
    var body: some View {
        
        HStack{
            VStack(alignment: .leading){
                //sticker제목
                Text("Sticker")
                    .font(.title)
                    .padding()
                HStack{
                    Spacer()
                    //날짜
                    Text("2023-07-07")
                        .font(.footnote)
                        .padding()
                }//날짜hstack
            }//vstack
            Spacer()
        }//hstack
        
        .background(.yellow)//배경색
        .shadow(radius: 6)//그림자
        .padding()
    }
}

struct StickerView_Previews: PreviewProvider {
    static var previews: some View {
        StickerView()
    }
}
