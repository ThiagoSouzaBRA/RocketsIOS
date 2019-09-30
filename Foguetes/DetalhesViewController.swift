//
//  DetalhesViewController.swift
//  Foguetes
//
//  Created by Aluno Mack on 10/09/19.
//  Copyright © 2019 Aluno Mack. All rights reserved.
//

import UIKit

class DetalhesViewController: UIViewController {


    @IBOutlet weak var ImagemFoguete: UIImageView!
    
    @IBOutlet weak var Nome_Info: UILabel!
    
    @IBOutlet weak var Pais_Info: UILabel!
    
    @IBOutlet weak var Ano_Info: UILabel!
    
    
    var Nome:String?
    
    var ImagemPath:UIImage?
    
    var Pais:String?
    
    var Ano:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImagemFoguete.image = ImagemPath
        
        Nome_Info.text = Nome
        
        Pais_Info.text = Pais
        
        Ano_Info.text = Ano
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
