//
//  ItemModel.swift
//  ToDoList
//
//  Created by Marc Jardine Esperas on 10/21/22.
//

import Foundation

struct ItemModel: Identifiable {
    var id: String
    let title: String
    let isCompleted: Bool
    
    init(id: String = UUID().uuidString, title: String, isCompleted: Bool) {
        self.id = id
        self.title = title
        self.isCompleted = isCompleted
    }
}

extension ItemModel {
    func updateCompletion() -> ItemModel {
        ItemModel(id: id, title: title, isCompleted: !isCompleted)
    }
}
