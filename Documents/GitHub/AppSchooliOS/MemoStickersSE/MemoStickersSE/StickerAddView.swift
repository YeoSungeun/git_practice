//
//  StickerAddView.swift
//  MemoStickersSE
//
//  Created by 여성은 on 2023/07/07.
//

import SwiftUI

struct StickerAddView: View {
    @Binding var isShowingSheet: Bool
    
    @State var selectedColor: Color = .yellow
    @State var memo: String = ""
    
    //열거형으로 돼있는 컬러들을 배열에 담음
    let colors: [Color] = [ .yellow, .pink, .cyan, .purple, .blue,]
    
    
    
    
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading){
                Text("Select a color")
                    .font(.title2)
                HStack{
                    ForEach(colors, id: \.self) { color in
                       StickerColoerSelectView(selectedColor: $selectedColor, color: color)
                    }//foreach
                    
                }//Hstack
                
                Divider() //선긋기
                    .padding()
                
                Text("Write a Memo")
                    .font(.title2)
                
                TextField("Memo", text: $memo, axis: .vertical)
                    .font(.title2)
                
                Spacer()
                
            }
            .padding()
            .navigationTitle("Add a Sticker")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Cancel") {
                        isShowingSheet = false
                    }
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Submit") {
                        
                    }
                }
            }
        }
        
    }
}

struct StickerAddView_Previews: PreviewProvider {
    static var previews: some View {
        StickerAddView(isShowingSheet: .constant(true))
    }
}
