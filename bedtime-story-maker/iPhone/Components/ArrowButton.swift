//
//  ArrowButton.swift
//  bedtime-story-maker
//
//  Created by Connor Holland on 6/11/23.
//

import SwiftUI

struct ArrowButton: View {
    var body: some View {
        ZStack {
            Color.blue
                .frame(width: 60, height: 60)
                .cornerRadius(28)
            Image(systemName: "arrowshape.forward.fill")
                .resizable()
                .frame(width: 26, height: 26)
        }
    }
}

struct ArrowButton_Previews: PreviewProvider {
    static var previews: some View {
        ArrowButton()
    }
}
