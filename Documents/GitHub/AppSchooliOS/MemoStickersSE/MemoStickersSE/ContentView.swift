//
//  ContentView.swift
//  MemoStickersSE
//
//  Created by 여성은 on 2023/07/07.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            StickerListView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
