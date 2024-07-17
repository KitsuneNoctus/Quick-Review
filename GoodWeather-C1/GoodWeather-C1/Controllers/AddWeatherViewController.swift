//
//  AddWeatherViewController.swift
//  GoodWeather-C1
//
//  Created by Henry Calderon on 7/17/24.
//

import UIKit

class AddWeatherViewController: UIViewController {
    
    let cityNameTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let saveButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Save", for: .normal)
//        button.tintColor = .systemBlue
        button.backgroundColor = .systemBlue
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        setup()
    }
    
    private func setup() {
        self.view.addSubview(cityNameTextField)
        self.view.addSubview(saveButton)
        
        NSLayoutConstraint.activate([
            cityNameTextField.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            cityNameTextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            cityNameTextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            cityNameTextField.heightAnchor.constraint(equalToConstant: 50),
            saveButton.topAnchor.constraint(equalTo: cityNameTextField.bottomAnchor, constant: 20),
            saveButton.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            saveButton.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
            
        ])
        
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
