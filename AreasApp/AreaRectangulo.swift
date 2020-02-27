//
//  AreaRectangulo.swift
//  AreasApp
//
//  Created by Isc. Torres on 2/22/20.
//  Copyright © 2020 isctorres. All rights reserved.
//

import SwiftUI

struct AreaRectangulo: View {
    @State var base = ""
    @State var altura = ""
    
    var area: Double{
        let longBase   = Double(base) ?? 0
        let longAltura = Double(altura) ?? 0
        let resArea =  longBase * longAltura
        return resArea
    }
    
    var body: some View {
        Group{
            Image("rectangulo")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150.0, height: 180.0, alignment: .center)
            //.clipShape(Circle())
            Form{
                Section(header: Text("Datos de Entrada")){
                    Text("Longitud de la base")
                    TextField("Base:", text: $base)
                    .keyboardType(.decimalPad)
                    Text("Longitud de la altura")
                    TextField("Altura:", text: $altura)
                    .keyboardType(.decimalPad)
                }
                Section(header: Text("Resultado")){
                    Text("Area: \(area, specifier: "%.2f")")
                }
            }.navigationBarTitle(Text("ÁREA DEL RECTANGULO"))
        }
    }
}
