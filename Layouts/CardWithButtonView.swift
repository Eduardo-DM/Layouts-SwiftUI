//
//  CardWithButtonView.swift
//  Layouts
//
//  Created by Eduardo Developer on 6/3/23.
//

import SwiftUI

struct CardWithButtonView: View {
    
    @State var vaquiValue: Double = 0.0
    
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "aqi.medium", variableValue: vaquiValue)
                .imageScale(.large)
                .foregroundColor(.green)
                .font(.system(size: 50))
                .fontWeight(.semibold)
            Text("Card with button")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text("Tap the button to increase the value of the variable value of the aqi.medium font over title. It has four states; it begins at initital state")
                .multilineTextAlignment(.center)
                .foregroundStyle(.secondary)
                .fontWeight(.semibold)
            Button {
                vaquiValue += 0.3
            } label: {
                Text("Increase aqi.medium value")
                    .foregroundStyle(.secondary)
                    .padding(.all)
                    .frame(maxWidth: .infinity)
                    .background(.green.opacity(0.4).gradient)
                    .cornerRadius(16)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke()
                            .foregroundStyle(.linearGradient(colors: [.blue.opacity(0.8), .gray.opacity(0.1)], startPoint: .top, endPoint: .bottom))
                    )
            }
            .buttonStyle(.plain)
            .accentColor(.primary)
        }
        .padding(30)
        .background(.ultraThinMaterial)
        .mask {
            RoundedRectangle(cornerRadius: 30, style: .continuous)
        }
        .shadow(color: .black.opacity(0.45), radius: 10, y: 20)
        .dynamicTypeSize(.xSmall ... .accessibility2)
    }
}

struct CardWithButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CardWithButtonView()
            .padding()
            .background{
                Image("BackgroundDesktop14proMax")
                    .ignoresSafeArea()
            }
    }
}
