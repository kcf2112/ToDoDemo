//
//  SmallAddButton.swift
//  ToDoDemo
//
//  Created by Kevin Filer on 2/12/22.
//

import SwiftUI

struct SmallAddButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame( width: 50 )
                .foregroundColor( Color( .blue ) )
              
            Text( "+" )
                .font( .title )
                .fontWeight( .heavy )
                .foregroundColor( .white )
        }
        .frame( height: 50 )
    }
}

struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
