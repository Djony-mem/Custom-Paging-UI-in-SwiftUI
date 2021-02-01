//
//  SquareStyle.swift
//  Custom Paging UI in SwiftUI
//
//  Created by Brubrusha on 2/2/21.
//

import SwiftUI

struct SquareStyle: View {
    let index: Int
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(Color.gray)
                .frame(width: 100, height: 100)
                .cornerRadius(30)
                .overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 4))
            Text("\(index)")
                .font(.largeTitle)
                .foregroundColor(.white)
            
        }
    }
}

struct SquareStyle_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.red)
            SquareStyle(index: 4)
        }
    }
}
