//
//  SwiftUIView.swift
//  Custom Paging UI in SwiftUI
//
//  Created by Brubrusha on 2/1/21.
//

import SwiftUI

struct FancyThreeDotsIndexView: View {
    let numberOfPages: Int
    let currentIndex: Int
    
    private let circleSize: CGFloat = 16
    private let circleSpacing: CGFloat = 12
    
    private let primaryColor = Color.white
    private let secondaryColor = Color.white.opacity(0.6)
    
    private let smallScale: CGFloat = 0.6
    
    var body: some View {
        HStack(spacing: circleSpacing) {
            ForEach(0..<numberOfPages) { index in
                if shouldShowIndex(index) {
                    Circle()
                        .fill(currentIndex == index ? primaryColor : secondaryColor)
                        .scaleEffect(currentIndex == index ? 1 : smallScale)
                        .frame(width: circleSize, height: circleSize)
                        .transition(AnyTransition.opacity.combined(with: .scale))
                        .id(index)
                }
            }
        }
    }
    
    func shouldShowIndex(_ index: Int) -> Bool {
        ((currentIndex - 1)...(currentIndex + 1)).contains(index)
    }
}



struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.red)
            FancyThreeDotsIndexView(numberOfPages: 4, currentIndex: 2)
        }
    }
}
