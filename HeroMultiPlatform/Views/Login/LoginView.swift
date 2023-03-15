//
//  LoginView.swift
//  HeroMultiPlatform
//
//  Created by IsaDevs on 15/3/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        Text("Test")
    }
}

// EN LA PREVIEW SE DEBEN DE VER LOS IDIOMAS
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environment(\.locale, .init(identifier: "es"))
        LoginView()
            .environment(\.locale, .init(identifier: "en"))
        LoginView()
            .environment(\.locale, .init(identifier: "it"))
    }
}
