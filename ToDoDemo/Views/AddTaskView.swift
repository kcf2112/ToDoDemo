//
//  AddTaskView.swift
//  ToDoDemo
//
//  Created by Kevin Filer on 2/11/22.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    
    // Add a 'dismiss this view' function.
    @Environment( \.dismiss ) var dismiss
    
    var body: some View {
        VStack( alignment: .leading, spacing: 20 ) {
            Text( "Create new task" )
                .font( .title3 ).bold()
                .frame( maxWidth: .infinity, alignment: .leading )
            
            TextField( "Enter your task here", text: $title )
                .textFieldStyle( .roundedBorder )
            
            Button {
                if title != "" {
                    realmManager.addTask( taskTitle: title )
                }
                dismiss()
            } label: {
                Text( "Add Task" )
                    .foregroundColor( .white )
                    .padding()
                    .padding( .horizontal )
                    .background( Color( .blue ) )
                    .cornerRadius( 30 )
            }
            // Uses available space, everything pusher up.
            Spacer()
        }
        .padding( .top, 40 )
        .padding( .horizontal )
        .background( Color( red: 0.897, green: 0.833, blue: 0.971) )
     }
}

struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject( RealmManager() )
    }
}
