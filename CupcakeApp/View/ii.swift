//
//  ii.swift
//  CupcakeApp
//
//  Created by لجين إبراهيم الكنهل on 07/11/1444 AH.
//

import SwiftUI

struct ii: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    init( ) {
        for familyName in UIFont.familyNames {
            print(familyName)
            for fontName in UIFont.fontNames (forFamilyName:
                                                familyName) {
                print ("_- \(fontName)")
            }}}
}

struct ii_Previews: PreviewProvider {
    static var previews: some View {
        ii()
    }
}
