//
//  ContentView.swift
//  ToDoDemo
//
//  Created by Kevin Filer on 2/11/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var realmManager = RealmManager()
    @State private var showAddTaskView = false
    
    var body: some View {
        ZStack( alignment: .bottomTrailing ) {
            TasksView()
                .environmentObject( realmManager )
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
            
        }
        .sheet( isPresented: $showAddTaskView ) {
            AddTaskView()
                .environmentObject( realmManager )
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom )
        .background( Color( red: 0.897, green: 0.833, blue: 0.971 ) )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
