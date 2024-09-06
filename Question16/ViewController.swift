//
//  ViewController.swift
//  Question16
//
//  Created by Abouzar Moradian on 9/6/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    

    var carMakers = [CarMaker]()
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       
        return "\(carMakers[section].name)"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        carMakers.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carMakers[section].cars.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let customCell = tableView.dequeueReusableCell(withIdentifier: "carCell", for: indexPath) as? CarCellTableViewCell
        
        guard let cell = customCell else { return UITableViewCell()}
        
        cell.nameLabel.text = carMakers[indexPath.section].cars[indexPath.row].name
        
        return cell
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            tableView.deselectRow(at: indexPath, animated: true)
          
        //guard let cell = tableView.cellForRow(at: indexPath) as? CarCellTableViewCell else { return }
        
        let alert = UIAlertController(title: carMakers[indexPath.section].cars[indexPath.row].name,
                                          message: "Engine \(carMakers[indexPath.section].cars[indexPath.row].engine)",
                                          preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
           
            present(alert, animated: true, completion: nil)
        }
    

    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self

        carMakers = createCarMakerList()
        
    }
    
    func createCarMakerList() -> [CarMaker] {
         
        var carMakers = [CarMaker]()
        
        var toyota = CarMaker(name: "Toyota", cars: [])
        toyota.addCar(car: Car(name: "Camry", engine: 2.4, carMaker: toyota.name))
        toyota.addCar(car: Car(name: "Corolla", engine: 2.0, carMaker: toyota.name))
        toyota.addCar(car: Car(name: "RAV4", engine: 2.4, carMaker: toyota.name))
        carMakers.append(toyota)
        
        var bmw = CarMaker(name: "BMW", cars: [])
        bmw.addCar(car: Car(name: "X5", engine: 3.0, carMaker: bmw.name))
        bmw.addCar(car: Car(name: "X3", engine: 2.0, carMaker: bmw.name))
        carMakers.append(bmw)



        
        return carMakers

        
        
    }


}


