//
//  TasksView.swift
//  ToDoDemo
//
//  Created by Kevin Filer on 2/11/22.
//

import SwiftUI

struct TasksView: View {
    var body: some View {
        VStack{
            Text( "My Tasks" )
                .font( .title3 ).bold()
                .padding()
                .frame( maxWidth: .infinity, alignment: .leading )
            
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity )
        .background( Color( red: 0.897, green: 0.833, blue: 0.971) )
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
    }
}
