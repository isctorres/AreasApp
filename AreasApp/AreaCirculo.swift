//
//  AreaCirculo.swift
//  AreasApp
//
//  Created by Isc. Torres on 2/22/20.
//  Copyright © 2020 isctorres. All rights reserved.
//

import SwiftUI

struct AreaCirculo: View {
    @State var radio = ""
    var area: Double{
        let longRadio = Double(radio) ?? 0
        let resArea =  pow(longRadio, 2) * Double.pi
        return resArea
    }
   
    var body: some View {
        Group{
            Image("circulo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150.0, height: 180.0, alignment: .center)
            //.clipShape(Circle())
            Form{
                Section(header: Text("Datos de Entrada")){
                    Text("Longitud del radio")
                    TextField("Radio:", text: $radio)
                        .keyboardType(.decimalPad)
                }
                Section(header: Text("Resultado")){
                    Text("Area: \(area, specifier: "%.2f")")
                }
            }.navigationBarTitle(Text("ÁREA DEL CIRCULO"))
        }
    }
}
