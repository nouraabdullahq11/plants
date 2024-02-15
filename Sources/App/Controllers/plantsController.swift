//
//  File.swift
//  
//
//  Created by Noura Alqahtani on 15/02/2024.
//

import Foundation
import Vapor

struct plantsController : RouteCollection{
    func boot(routes: RoutesBuilder) throws {
       
        //http://127.0.0.1:8080/plants
        let plants = routes.grouped("plants")
        
        plants.get(use : index)
        
        plants.post(use : create)
        
        plants.put(":id" , use : update)
        
        plants.delete(":id" , use : delete)
        
        plants.get(":id" , use : getplantbyid)
    }
    
    func index (req : Request) async throws -> String {
        return "GET all plants"
    }
    
    func create (req : Request) async throws -> String {
        return "create all plants"
    }
    
    func update (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "update plants with \(id)"
    }
    
    func delete (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "delete plants with \(id)"
    }
    
    func getplantbyid (req : Request) async throws -> String {
        let id = req.parameters.get("id")!
        return "plants info id \(id)"
    }
}
