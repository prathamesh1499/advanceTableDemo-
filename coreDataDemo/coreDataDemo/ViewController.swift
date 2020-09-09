//
//  ViewController.swift
//  coreDataDemo
//
//  Created by admin on 24/03/19.
//  Copyright © 2019 Prathamesh. All rights reserved.
//

import UIKit
import CoreData
class ViewController: UIViewController
{

    @IBOutlet weak var ageText: UITextField!
    @IBOutlet weak var nameText: UITextField!
    
    func getContext()->NSManagedObjectContext
    {
        let appDel = UIApplication.shared.delegate as! AppDelegate
        return
         appDel.persistentContainer.viewContext

    }
    
    @IBAction func add(_ sender: UIButton)
    {
       let context = getContext()
        let newEmp = NSEntityDescription.insertNewObject(forEntityName: "Employee", into: context)
        newEmp.setValue(nameText.text!, forKey: "name")
          newEmp.setValue(Int(ageText.text!), forKey: "age")
        do{
        try context.save()
        }catch{
            print("Error in insert:\(error.localizedDescription)")
        }
    }
    @IBAction func retrive(_ sender: UIButton)
    {
        let fetchReq = NSFetchRequest<NSFetchRequestResult>(entityName: "Employee")
        do{
            let record = try getContext().fetch(fetchReq)
              for rec in record as! [NSManagedObject]
              {
                print(rec.value(forKey: "name")!, rec.value(forKey: "age")!)
               }
        }catch{
            print("Error in insert:\(error.localizedDescription)")
        }
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        print(NSSearchPathForDirectoriesInDomains( .documentDirectory, .userDomainMask,true ).last! as String)
    }

}

