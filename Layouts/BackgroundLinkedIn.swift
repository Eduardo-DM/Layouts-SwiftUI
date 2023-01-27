//
//  BackgroundLinkedIn.swift
//  MaquetandoConSwiftUI
//
//  Created by Eduardo Developer on 30/9/22.
//

import SwiftUI

struct BackgroundLinkedIn: View {
    
    let degradeBackground: RadialGradient = RadialGradient(gradient: Gradient(colors: [Color.goldSideIphone14,Color.silverSideIphone14]), center: .center, startRadius: 150, endRadius: 250)
    
    var quote: some View{
        Group{
            Text(#""The best way to build an app"#)
                .italic()
                .fontWeight(.heavy)
                .font(.title2)
                .padding([.top],5)
            Text(#"is with Swift and SwiftUI""#)
                .italic()
                .fontWeight(.heavy)
                .font(.title2)
        }
    }
    
    var logos: some View{
        HStack(spacing:0){
            Image("SwiftLogo")
                .resizable()
                .adjustPictureInHStack(height: 62, spacing: 20)
            Image("SwiftUILogo")
                .resizable()
                .adjustPictureInHStack(height: 62, spacing: 14)
            Image("XcodeLogo")
                .resizable()
                .adjustPictureInHStack(height: 62)
        }
    }
    var quoteSource: some View{
        VStack(alignment: .trailing){
            Text("Joshua Shaffer,")
                .font(.subheadline)
                .fontWeight(.bold)
            Text("Platforms State of the Union, WWDC22")
                .font(.subheadline)
                .fontWeight(.bold)
        }
    }
    
    var body: some View {
        degradeBackground
            .overlay(alignment: .top){
                VStack(spacing:2){
                    quote
                    logos
                }
            }
            .overlay(alignment:.bottomTrailing){
                quoteSource
                    .padding([.bottom, .trailing], 6)
                    .padding([ .trailing], 10)
            }
            .frame(width: 640, height:160)
    }
}

extension Image{
    func adjustPictureInHStack(height: CGFloat, spacing:CGFloat = 0) -> some View{
        modifier(AdjustPictureInHStack(height: height, spacing: spacing))
    }
}
struct AdjustPictureInHStack: ViewModifier{
    let height: CGFloat
    let spacing: CGFloat
    func body(content: Content) -> some View{
        content
            .scaledToFit()
            .frame(height:height)
            .padding([.trailing],spacing)
    }
}



struct BackgroundLinkedIn_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundLinkedIn()
    }
}
