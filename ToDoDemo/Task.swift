//
//  Task.swift
//  ToDoDemo
//
//  Created by Kevin Filer on 2/12/22.
//

import Foundation
import RealmSwift

class Task: Object, ObjectKeyIdentifiable {
    @Persisted( primaryKey: true ) var id: ObjectId
    @Persisted var title = ""
    @Persisted var completed = false
}
