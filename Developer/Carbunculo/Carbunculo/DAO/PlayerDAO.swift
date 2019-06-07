//
//  PlayerDAO.swift
//  Shyne
//
//  Created by Ruy de Ascencão Neto on 08/01/19.
//  Copyright © 2019 Abacate. All rights reserved.
//
import Foundation
import CoreData
import UIKit

class PlayerDAO{
    private static var appDelegate:AppDelegate?
    private static var context:NSManagedObjectContext?
    private static var entityKeys:NSEntityDescription?
    private static var entityAchviements:NSEntityDescription?
    private static var entityStatus:NSEntityDescription?
    private static var entityScenario:NSEntityDescription?
    
    private static func getInstanceContext() -> NSManagedObjectContext{
        if(appDelegate == nil){
            appDelegate = (UIApplication.shared.delegate as! AppDelegate)
            context = appDelegate?.persistentContainer.viewContext
        }
        return context!
    }
    
    //MARK:ENTITIES
    private static func getInstanceEntityPlayerSave() -> NSEntityDescription{
        if(entityKeys == nil){
            entityKeys = NSEntityDescription.entity(forEntityName: "PlayerSave", in: getInstanceContext())
        }
        return entityKeys!
    }

    //MARK:ADDS
    
    static func addPlayer(player:PlayerPersistence){
        let newPlayer = NSManagedObject(entity: getInstanceEntityPlayerSave(), insertInto: getInstanceContext())
        newPlayer.setValue(player.pontos, forKey: "pontos")
        newPlayer.setValue(player.checkpoint, forKey: "checkpoint")
        newPlayer.setValue(player.qtdemacas, forKey: "qtdemacas")
        
        do {
            try getInstanceContext().save()
        } catch {
            print("Failed saving")
        }
    }
    
    
    //MARK:GETS
    
    static func getSaves()->[PlayerPersistence]{
        
        var lista:[PlayerPersistence] = []
        let request            = NSFetchRequest<NSFetchRequestResult>(entityName: "PlayerSave")
        //request.predicate = NSPredicate(format: "age = %@", "12")
        request.returnsObjectsAsFaults = false
        do {
            let result         = try getInstanceContext().fetch(request)
            for data in result as! [NSManagedObject] {
                let pontos      = data.value(forKey: "pontos") as! Int
                let checkpoint  = data.value(forKey: "checkpoint") as! Int
                let qtdemacas   = data.value(forKey: "qtdemacas") as! Int
                let escolhaum   = data.value(forKey: "escolhaum") as! Int
                let escolhadois = data.value(forKey: "escolhadois") as! Int
                let p           = PlayerPersistence(pontos: pontos, checkpoint: checkpoint, qtdemacas: qtdemacas, escolhaUm: escolhaum, escolhaDois: escolhadois)
                lista.append(p)
            }
            
        } catch {
            print("Failed")
        }
        return lista
    }

    //MARK:DELETES
    static func deleteAllSaves(){
//        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "PlayerSave")
//        //request.predicate = NSPredicate(format: "age = %@", "12")
//        request.returnsObjectsAsFaults = false
//        do {
//            let result = try getInstanceContext().fetch(request)
//            for data in result as! [NSManagedObject] {
//                getInstanceContext().delete(data)
//            }
//        } catch {
//            print("Failed")
//        }
        
        guard let appDelegate  = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedContext     = appDelegate.persistentContainer.viewContext
        let fetchRequest       = NSFetchRequest<NSFetchRequestResult>(entityName: "PlayerSave")
        do{
            let test = try managedContext.fetch(fetchRequest)
            
            for objectToDelete in test {
                let objeto = objectToDelete as! NSManagedObject
                managedContext.delete(objeto)
                do{
                    try managedContext.save()
                }
            }
        }catch{
            print(error)
        }
    }
    
    //MARK:UPDATES
    
    static func updateData(player:PlayerPersistence){
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
        let managedContext    = appDelegate.persistentContainer.viewContext
        
        let fetchRequest:NSFetchRequest<NSFetchRequestResult> = NSFetchRequest.init(entityName: "PlayerSave")
        do{
            let test = try managedContext.fetch(fetchRequest)
            
                let objectUpdate = test[0] as! NSManagedObject
                objectUpdate.setValue(player.pontos, forKey: "pontos")
                objectUpdate.setValue(player.checkpoint, forKey: "checkpoint")
                objectUpdate.setValue(player.qtdemacas, forKey: "qtdemacas")
                objectUpdate.setValue(player.escolhaUm, forKey: "escolhaum")
                objectUpdate.setValue(player.escolhaDois, forKey: "escolhadois")
            do{
                try managedContext.save()
            }
            catch{
                print(" Erro na hora de salvar.")
            }
        }
        catch{
            
        }
    }
}

struct PlayerPersistence{
    var pontos      :Int
    var checkpoint  :Int
    var qtdemacas   :Int
    var escolhaUm   :Int
    var escolhaDois :Int
}
