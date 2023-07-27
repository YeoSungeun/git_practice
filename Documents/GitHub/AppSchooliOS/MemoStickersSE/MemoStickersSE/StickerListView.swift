//
//  StickerListView.swift
//  MemoStickersSE
//
//  Created by 여성은 on 2023/07/07.
//

//컨텐트뷰 사용하지 않으려고!? 파일이름과 기능을 알려주려고

import SwiftUI

struct StickerListView: View {
    
    //sheet 올라왔는지 상태
    //바인딩으로 넘기는 Bool, Int 같은 기본값에는
    //State 프로퍼티 래퍼를 꼭 달아줘야한다
    @State var isShowingSheet: Bool = false
    
    var body: some View {
        VStack{
            List{
                StickerView()
                StickerView()
                StickerView()
                StickerView()
                StickerView()
            }//list
            
            //추가버튼
            
        }
        .listStyle(.plain)
        .navigationTitle("Stickers")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    print("add")
                    isShowingSheet = true
//                  isShowingSheet.toggle()
                    // true false 값이랑  바꿔주는 것
                } label: {
                    Label("Add", systemImage: "square.and.pencil")
                }
            }//ToolbarItem
        }//toolbar
        .sheet(isPresented: $isShowingSheet) {
            //sheet에 isPresented 매개변수로 보내주는
            //바인딩 된 isShowingSheet는
            //(손으로 끌어내려서 sheet가 내려가면
            //내부에서 알아서 그 값을 false로 바꾼다
            
            //1. 여기에 시트에 나올 뷰를 만들어주자
            //2. StickerAddView 만들기  -> 3.추가하기
            //StickerAddView 안에서도 isShowingSheet 값을 바꾸어
            //sheet를 내릴 수 있게하기 위해  바인딩을 사용함!
            StickerAddView(isShowingSheet: $isShowingSheet)
        }//sheet
    }
}

struct StickerListView_Previews: PreviewProvider {
    static var previews: some View {
        
        //네비게이션 제목이 프리뷰에서 보이게 하는 편법
        NavigationStack{
            StickerListView()
        }
    }
}
