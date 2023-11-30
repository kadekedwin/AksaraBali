//
//  Persistence.swift
//  AksaraBali
//
//  Created by Kadek Edwin on 27/08/23.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()

    let container = NSPersistentContainer(name: "AksaraBali")

    init() {
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        container.viewContext.automaticallyMergesChangesFromParent = true
    }
    
    
}
