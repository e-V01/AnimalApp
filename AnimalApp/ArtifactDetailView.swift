//
//  ArtifactDetailView.swift
//  AnimalApp
//
//  Created by Y K on 09.10.2023.
//

import SwiftUI

struct ArtifactDetailView: View {
    
    var artifact: HistoricalArtifact
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ScrollView {
            VStack {
                Image(artifact.imageDetail)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 480, height: 480)
                    .clipped()
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 510, height: 510)
                        .background(Color.white)
                        .blur(radius: 50)
                        .offset(y: -500)
                    
                    Text(artifact.name)
                        .font(Font.custom("Bebas neue", size: 60))
                        .foregroundColor(.black)
                        .frame(width: 365, alignment: .topLeading)
                        .offset(y: -670)
                    
                    Text(artifact.description)
                        .font(Font.custom("Iowan Old Style", size: 20))
                        .foregroundColor(.black)
                        .frame(width: 360, alignment: .topLeading)
                        .offset(y: -70)
                }
            }
            .frame(maxHeight: .infinity, alignment: .top)
            .ignoresSafeArea(.container, edges: .top)
        }
    }
}

#Preview {
    ArtifactDetailView(artifact: HistoricalArtifact(name: "",
                                                    imageName: "",
                                                    description: "",
                                                    imageDetail: ""))
}
