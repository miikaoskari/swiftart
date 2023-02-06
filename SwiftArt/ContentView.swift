//
//  ContentView.swift
//  SwiftArt
//
//  Created by Miika Karjalainen on 6.2.2023.
//

import SwiftUI



struct ContentView: View {
    @State private var chosenColor = Color.white
    @State private var pencilFlag = true
    @State private var rubberFlag = false
    
    var body: some View {
        MainView()
        .toolbar {
            ToolbarItemGroup {
                Toggle(isOn: $pencilFlag) {
                    Label("Pencil", systemImage: "pencil.tip")
                }
                Toggle(isOn: $rubberFlag) {
                    Label("Rubber", systemImage: "eraser.line.dashed")
                }
                VStack {
                    ColorPicker("", selection: $chosenColor)
                }
            }
            
            
        }
        
    }
    private func selectPencil() {
        
    }
    
    private func selectRubber() {
        
    }
    
    private func selectColor() {}

}


struct MainView: View {
    var body: some View {
        VStack {
            Text("")
            Divider()
            Spacer()
        }
        .background(Color.white)
    }
    
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
