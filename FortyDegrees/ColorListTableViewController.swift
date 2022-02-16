//
//  ColorListTableViewController.swift
//  FortyDegrees
//
//  Created by Glynvile Satago on 2/16/22.
//

import UIKit

struct ColorModel {
    var color: UIColor
    var title: String
}
class ColorListTableViewController: UITableViewController {

    var arrayColors = Array<ColorModel>()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayColors.append(ColorModel(color: UIColor.red, title: "Red"))
        arrayColors.append(ColorModel(color: UIColor.blue, title: "Blue"))
        arrayColors.append(ColorModel(color: UIColor.green, title: "Green"))
        arrayColors.append(ColorModel(color: UIColor.red, title: "Violet"))
        arrayColors.append(ColorModel(color: UIColor.yellow, title: "Yellow"))
        arrayColors.append(ColorModel(color: UIColor.orange, title: "Orange"))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayColors.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = arrayColors[indexPath.row].title
        // Configure the cell...

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color  = self.arrayColors[indexPath.row]
        self.performSegue(withIdentifier: "ShowDetail", sender: color)
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ViewController {
            destination.view.backgroundColor = (sender as! ColorModel).color
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
