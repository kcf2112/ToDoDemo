//
//  TasksView.swift
//  ToDoDemo
//
//  Created by Kevin Filer on 2/11/22.
//

import SwiftUI
import RealmSwift
import Network

struct TasksView: View {
    @EnvironmentObject var realmManager: RealmManager
    
    var body: some View {
        VStack{
            Text( "My Tasks" )
                .font( .title3 ).bold()
                .padding()
                .frame( maxWidth: .infinity, alignment: .leading )
            
            List {
                ForEach( realmManager.tasks, id: \.id  ) {
                    task in
                    if !task.isInvalidated {
                        TaskRow( task: task.title, completed: task.completed )
                            .onTapGesture {
                                realmManager.updateTask(
                                    id: task.id,
                                    completed: !task.completed )
                            }
                            .swipeActions( edge: .trailing ) {
                                // trailing: swipe left to right
                                Button( role: .destructive ) {
                                    realmManager.deleteTask( id: task.id )
                                } label: {
                                    Label( "Delete", systemImage: "trash" )
                                }
                            }
                    }
                }//.listRowSeparator( .hidden )
            }
            .onAppear {
                UITableView.appearance().backgroundColor = UIColor.clear
                UITableViewCell.appearance().backgroundColor = UIColor.clear
            }
            
        }
        .frame( maxWidth: .infinity, maxHeight: .infinity )
        .background( Color( red: 0.897, green: 0.833, blue: 0.971) )
    }
}

struct TasksView_Previews: PreviewProvider {
    static var previews: some View {
        TasksView()
            .environmentObject( RealmManager() )
    }
}
