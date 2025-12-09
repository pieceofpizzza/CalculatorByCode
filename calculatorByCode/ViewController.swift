//
//  ViewController.swift
//  calculatorByCode
//
//  Created by Дарина Лисанова on 19.11.2022.
//

//import UIKit
//
//class ViewController: UIViewController {
//    
//    private var label1 = UILabel()
//    private var label2 = UILabel()
//    private var label3 = UILabel()
//    private var label4 = UILabel()
//    private var label5 = UILabel()
//    private var label6 = UILabel()
//    private var label7 = UILabel()
//    private var label8 = UILabel()
//    private var label9 = UILabel()
//    private var label0 = UILabel()
//    private var labelAc = UILabel()
//    private var labelPlusMinus = UILabel()
//    private var labelPercent = UILabel()
//    private var labelDivision = UILabel()
//    private var labelMultiply = UILabel()
//    private var labelMinus = UILabel()
//    private var labelPlus = UILabel()
//    private var labelEquals = UILabel()
//    private var labelComma = UILabel()
//    
//    private var bottomStackView = UIStackView()
//    private var stackView2 = UIStackView()
//    private var stackView3 = UIStackView()
//    private var stackView4 = UIStackView()
//    private var topStackView = UIStackView()
//    
//    private let backgroundColor: UIColor = .lightGray
//    private let textColor: UIColor = .black
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        setupLabel0()
//        setupLabel1()
//        setupLabel2()
//        setupLabel3()
//        setupLabel4()
//        setupLabel5()
//        setupLabel6()
//        setupLabel7()
//        setupLabel8()
//        setupLabel9()
//        setupLabelAc()
//        setupLabelPlus()
//        setupLabelComma()
//        setupLabelMinus()
//        setupLabelEquals()
//        setupLabelPercent()
//        setupLabelDivision()
//        setupLabelMultiply()
//        setupLabelPlusMinus()
//        setupBottomStackView()
//        setupStackView2()
//        setupStackView3()
//        setupStackView4()
//        setupTopStackView()
//        setConstraints()
//    }
//    
//    func setupBottomStackView() {
//        bottomStackView.backgroundColor = .darkGray
//        bottomStackView.spacing = 1
//        bottomStackView.distribution = .fillProportionally
//        bottomStackView.addArrangedSubview(label0)
//        bottomStackView.addArrangedSubview(labelComma)
//        bottomStackView.addArrangedSubview(labelEquals)
//        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(bottomStackView)
//    }
//    
//    func setupLabel0() {
//        label0.text = "0"
//        label0.textColor = textColor
//        label0.backgroundColor = backgroundColor
//        label0.textAlignment = .center
//        label0.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label0)
//    }
//    
//    func setupLabelComma() {
//        labelComma.text = ","
//        labelComma.textColor = textColor
//        labelComma.backgroundColor = backgroundColor
//        labelComma.textAlignment = .center
//        labelComma.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelComma)
//    }
//    
//    func setupLabelEquals() {
//        labelEquals.text = "="
//        labelEquals.textColor = textColor
//        labelEquals.backgroundColor = backgroundColor
//        labelEquals.textAlignment = .center
//        labelComma.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelEquals)
//    }
//    
//    func setupStackView2() {
//        stackView2.backgroundColor = .darkGray
//        stackView2.spacing = 1
//        stackView2.distribution = .fillEqually
//        stackView2.addArrangedSubview(label1)
//        stackView2.addArrangedSubview(label2)
//        stackView2.addArrangedSubview(label3)
//        stackView2.addArrangedSubview(labelPlus)
//        stackView4.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(stackView2)
//    }
//    
//    func setupLabel1() {
//        label1.text = "1"
//        label1.textColor = textColor
//        label1.backgroundColor = backgroundColor
//        label1.textAlignment = .center
//        label1.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label1)
//    }
//    
//    func setupLabel2() {
//        label2.text = "2"
//        label2.textColor = textColor
//        label2.backgroundColor = backgroundColor
//        label2.textAlignment = .center
//        label2.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label2)
//    }
//    
//    func setupLabel3() {
//        label3.text = "3"
//        label3.textColor = textColor
//        label3.backgroundColor = backgroundColor
//        label3.textAlignment = .center
//        label3.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label3)
//    }
//    
//    func setupLabelPlus() {
//        labelPlus.text = "+"
//        labelPlus.textColor = textColor
//        labelPlus.backgroundColor = backgroundColor
//        labelPlus.textAlignment = .center
//        labelPlus.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelPlus)
//    }
//    
//    func setupStackView3() {
//        stackView3.backgroundColor = .darkGray
//        stackView3.spacing = 1
//        stackView3.distribution = .fillEqually
//        stackView3.addArrangedSubview(label4)
//        stackView3.addArrangedSubview(label5)
//        stackView3.addArrangedSubview(label6)
//        stackView3.addArrangedSubview(labelMinus)
//        stackView4.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(stackView3)
//    }
//    
//    func setupLabel4() {
//        label4.text = "4"
//        label4.textColor = textColor
//        label4.backgroundColor = backgroundColor
//        label4.textAlignment = .center
//        label4.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label4)
//    }
//    
//    func setupLabel5() {
//        label5.text = "5"
//        label5.textColor = textColor
//        label5.backgroundColor = backgroundColor
//        label5.textAlignment = .center
//        label5.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label5)
//    }
//    
//    func setupLabel6() {
//        label6.text = "6"
//        label6.textColor = textColor
//        label6.backgroundColor = backgroundColor
//        label6.textAlignment = .center
//        label6.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label6)
//    }
//    
//    func setupLabelMinus() {
//        labelMinus.text = "-"
//        labelMinus.textColor = textColor
//        labelMinus.backgroundColor = backgroundColor
//        labelMinus.textAlignment = .center
//        labelMinus.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelMinus)
//    }
//    
//    func setupStackView4() {
//        stackView4.backgroundColor = .darkGray
//        stackView4.spacing = 1
//        stackView4.distribution = .fillEqually
//        stackView4.addArrangedSubview(label7)
//        stackView4.addArrangedSubview(label8)
//        stackView4.addArrangedSubview(label9)
//        stackView4.addArrangedSubview(labelMultiply)
//        stackView4.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(stackView4)
//    }
//    
//    func setupLabel7() {
//        label7.text = "7"
//        label7.textColor = textColor
//        label7.backgroundColor = backgroundColor
//        label7.textAlignment = .center
//        label7.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label7)
//    }
//    
//    func setupLabel8() {
//        label8.text = "8"
//        label8.textColor = textColor
//        label8.backgroundColor = backgroundColor
//        label8.textAlignment = .center
//        label8.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label8)
//    }
//    
//    func setupLabel9() {
//        label9.text = "9"
//        label9.textColor = textColor
//        label9.backgroundColor = backgroundColor
//        label9.textAlignment = .center
//        label9.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(label9)
//    }
//    
//    func setupLabelMultiply() {
//        labelMultiply.text = "*"
//        labelMultiply.textColor = textColor
//        labelMultiply.backgroundColor = backgroundColor
//        labelMultiply.textAlignment = .center
//        labelMultiply.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelMultiply)
//    }
//    
//    func setupTopStackView() {
//        topStackView.backgroundColor = .darkGray
//        topStackView.spacing = 1
//        topStackView.distribution = .fillEqually
//        topStackView.addArrangedSubview(labelAc)
//        topStackView.addArrangedSubview(labelPlusMinus)
//        topStackView.addArrangedSubview(labelPercent)
//        topStackView.addArrangedSubview(labelDivision)
//        topStackView.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(topStackView)
//    }
//    
//    func setupLabelAc() {
//        labelAc.text = "AC"
//        labelAc.textColor = textColor
//        labelAc.backgroundColor = backgroundColor
//        labelAc.textAlignment = .center
//        labelAc.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelAc)
//    }
//    
//    func setupLabelPlusMinus() {
//        labelPlusMinus.text = "+/-"
//        labelPlusMinus.textColor = textColor
//        labelPlusMinus.backgroundColor = backgroundColor
//        labelPlusMinus.textAlignment = .center
//        labelPlusMinus.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelPlusMinus)
//    }
//    
//    func setupLabelPercent() {
//        labelPercent.text = "%"
//        labelPercent.textColor = textColor
//        labelPercent.backgroundColor = backgroundColor
//        labelPercent.textAlignment = .center
//        labelPercent.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelPercent)
//    }
//    
//    func setupLabelDivision() {
//        labelDivision.text = "/"
//        labelDivision.textColor = textColor
//        labelDivision.backgroundColor = backgroundColor
//        labelDivision.textAlignment = .center
//        labelDivision.translatesAutoresizingMaskIntoConstraints = false
//        view.addSubview(labelDivision)
//    }
//    
//    func setConstraints() {
//        let height = (view.frame.width - stackView2.spacing * CGFloat(stackView2.arrangedSubviews.count)) / CGFloat(stackView2.arrangedSubviews.count)
//        
//        bottomStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        bottomStackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        bottomStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
//        bottomStackView.heightAnchor.constraint(equalToConstant: height).isActive = true
//        
//        stackView2.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        stackView2.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        stackView2.bottomAnchor.constraint(equalTo: bottomStackView.topAnchor, constant: 1).isActive = true
//        stackView2.heightAnchor.constraint(equalToConstant: height).isActive = true
//        
//        stackView3.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        stackView3.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        stackView3.bottomAnchor.constraint(equalTo: stackView2.topAnchor, constant: 1).isActive = true
//        stackView3.heightAnchor.constraint(equalToConstant: height).isActive = true
//        
//        stackView4.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        stackView4.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        stackView4.bottomAnchor.constraint(equalTo: stackView3.topAnchor, constant: 1).isActive = true
//        stackView4.heightAnchor.constraint(equalToConstant: height).isActive = true
//        
//        topStackView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
//        topStackView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
//        topStackView.bottomAnchor.constraint(equalTo: stackView4.topAnchor, constant: 1).isActive = true
//        topStackView.heightAnchor.constraint(equalToConstant: height).isActive = true
//        
//    }
//
//
//}

import UIKit

class ViewController: UIViewController {

    private let backgroundColor: UIColor = .lightGray
    private let textColor: UIColor = .black
    
    private var topStackView = UIStackView()
    private var stackView4 = UIStackView()
    private var stackView3 = UIStackView()
    private var stackView2 = UIStackView()
    private var bottomStackView = UIStackView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupAllStacks()
        setConstraints()
    }
    
    
    private func makeButton(title: String) -> UILabel {
        let label = UILabel()
        label.text = title
        label.textColor = textColor
        label.backgroundColor = backgroundColor
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 32)
        label.layer.cornerRadius = 8
        label.layer.masksToBounds = true
        return label
    }
    
    // MARK: - Настройка стеков
    private func setupAllStacks() {
        // 1. Top Stack
        topStackView = createStackView()
        ["AC", "+/-", "%", "/"].forEach { topStackView.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(topStackView)
        
        // 2. Stack 4 (7 8 9 *)
        stackView4 = createStackView()
        ["7","8","9","*"].forEach { stackView4.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(stackView4)
        
        // 3. Stack 3 (4 5 6 -)
        stackView3 = createStackView()
        ["4","5","6","-"].forEach { stackView3.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(stackView3)
        
        // 4. Stack 2 (1 2 3 +)
        stackView2 = createStackView()
        ["1","2","3","+"].forEach { stackView2.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(stackView2)
        
        // 5. Bottom Stack (0 , =)
        bottomStackView = createStackView()
        bottomStackView.distribution = .fillProportionally
        ["0", ",", "="].forEach { bottomStackView.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(bottomStackView)
    }
    
    private func createStackView() -> UIStackView {
        let sv = UIStackView()
        sv.axis = .horizontal
        sv.spacing = 1
        sv.distribution = .fillEqually
        sv.translatesAutoresizingMaskIntoConstraints = false
        return sv
    }
    
    // MARK: - Constraints
    private func setConstraints() {
        let stacks = [topStackView, stackView4, stackView3, stackView2, bottomStackView]
        var previousStack: UIStackView? = nil
        
        for stack in stacks {
            NSLayoutConstraint.activate([
                stack.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 1),
                stack.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -1),
                stack.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.2)
            ])
            
            if let prev = previousStack {
                stack.bottomAnchor.constraint(equalTo: prev.topAnchor, constant: -1).isActive = true
            } else {
                // Bottom stack привязываем к safeArea
                stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -1).isActive = true
            }
            
            previousStack = stack
        }
    }
}
