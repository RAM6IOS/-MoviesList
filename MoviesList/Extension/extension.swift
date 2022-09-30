//
//  extension.swift
//  PopularMovies
//
//  Created by Bouchedoub Rmazi on 30/9/2022.
//

import Foundation
import SwiftUI
extension Color {
    static let theme = Color("Color")
    
}
extension View {
    @available(iOS 14, *)
    func navigationBarTitleTextColor(_ color: Color) -> some View {
        let uiColor = UIColor(color)
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: uiColor ]
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor: uiColor ]
    
        return self
    }
}
