//
//  button.swift
//  Landmark
//
//  Created by Anthony Roushdy on 11/16/23.
//

import SwiftUI

struct button: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
            //with the isSet we can use the button functions. In this case we are using the toggle function
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow: .gray //isSet? is like if and else statement - if it is true, make it yellow, otherwise, gray.)
        }
    }
}

struct button_Previews: PreviewProvider {
    static var previews: some View {
        button()
    }
}
