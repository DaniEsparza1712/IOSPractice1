//
//  ViewController.swift
//  practica1
//
//  Created by Alumno-008 on 21/03/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn7: UIButton!
    @IBOutlet weak var btn8: UIButton!
    @IBOutlet weak var btn9: UIButton!
    var btns: [UIButton] = [UIButton]()
      

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var player = "O"
    
    @IBAction func btn1Click(_ sender: UIButton) {
        
        if(sender.tag == 2){
            btn1.setTitle(player, for: .normal)
            btn1.isEnabled = false
            
            var mensaje = UIAlertController(title: "Winner", message: "You win", preferredStyle: .alert)
            let continueBtn = UIAlertAction(title: "Restart", style: .default, handler: {
                click -> Void in
                //Accion a realizar
                self.restartGame()
            })
            mensaje.addAction(continueBtn)
            self.present(mensaje,animated: true, completion: nil)
        }
    }
    
    
    func restartGame() -> Void{
        btn1.isEnabled = true
    }
    
    func changePlayer() -> Void{
        if(player == "O"){
            player = "X"
        }
        else{
            player = "O"
        }
    }
}

