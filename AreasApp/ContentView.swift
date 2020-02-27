//
//  ContentView.swift
//  AreasApp
//
//  Created by Isc. Torres on 2/22/20.
//  Copyright © 2020 isctorres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List{
                NavigationLink(destination: AreaTriangulo()){
                    HStack{
                        Image("triangulo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 100.0)
                        Text("Área del Triangulo")
                    }
                }
                NavigationLink(destination: AreaCirculo()){
                    HStack{
                        Image("circulo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 100.0)
                        Text("Área del Circulo")
                    }
                }
                NavigationLink(destination: AreaRectangulo()){
                    HStack{
                        Image("rectangulo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80.0, height: 100.0)
                        Text("Area del Rectangulo")
                    }
                }
            }.navigationBarTitle(Text("Areas APP"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
