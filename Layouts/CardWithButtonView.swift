//
//  CardWithButtonView.swift
//  Layouts
//
//  Created by Eduardo Developer on 6/3/23.
//

import SwiftUI

struct CardWithButtonView: View {
    var body: some View {
        VStack{
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .background{
            Image("BackgroundDesktop14proMax")
                .ignoresSafeArea()
        }
    }
}

struct CardWithButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CardWithButtonView()
    }
}
