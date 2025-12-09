//
//  ViewController.swift
//  calculatorByCode
//
//  Created by Дарина Лисанова on 19.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - features
    private let backgroundColor: UIColor = .lightGray
    private let textColor: UIColor = .black
    
    private var bottomStackView = UIStackView()
    private var stackViewSevenToMultiply = UIStackView()
    private var stackViewFourToSubstract = UIStackView()
    private var stackViewOneToAddition = UIStackView()
    private var topStackView = UIStackView()
    
    // MARK: - life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        setupAllStacks()
        setConstraints()
    }
    
    //MARK: - make button
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
    
    //MARK: - stack's setup
    private func setupAllStacks() {
        
        topStackView = createStackView()
        ["AC", "+/-", "%", "/"].forEach { topStackView.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(topStackView)
        
        stackViewSevenToMultiply = createStackView()
        ["7","8","9","*"].forEach { stackViewSevenToMultiply.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(stackViewSevenToMultiply)
        
        stackViewFourToSubstract = createStackView()
        ["4","5","6","-"].forEach { stackViewFourToSubstract.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(stackViewFourToSubstract)
        
        stackViewOneToAddition = createStackView()
        ["1","2","3","+"].forEach { stackViewOneToAddition.addArrangedSubview(makeButton(title: $0)) }
        view.addSubview(stackViewOneToAddition)

        setupBottomStack()
        
    }
    
    //MARK: - bottom stack's setup
    
    private func setupBottomStack() {
        let zeroButton = makeButton(title: "0")
        let commaButton = makeButton(title: ",")
        let equalsButton = makeButton(title: "=")
        
        //left stack "0" and ","
        let leftStack = UIStackView(arrangedSubviews: [zeroButton, commaButton])
        leftStack.axis = .horizontal
        leftStack.spacing = 1
        leftStack.distribution = .fillProportionally
        leftStack.translatesAutoresizingMaskIntoConstraints = false
        
        //proportion: "0" twice as wide ","
        zeroButton.widthAnchor.constraint(equalTo: commaButton.widthAnchor, multiplier: 2).isActive = true
        
        // main top stack: left stack and "="
        bottomStackView = UIStackView(arrangedSubviews: [leftStack, equalsButton])
        bottomStackView.axis = .horizontal
        bottomStackView.spacing = 1
        bottomStackView.distribution = .fillProportionally
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        equalsButton.widthAnchor.constraint(equalTo: commaButton.widthAnchor).isActive = true
        
        view.addSubview(bottomStackView)
    }
    
    private func createStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 1
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }

    
    // MARK: - constraints
    private func setConstraints() {
        let stacks = [bottomStackView, stackViewOneToAddition, stackViewFourToSubstract, stackViewSevenToMultiply, topStackView]
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
                stack.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -1).isActive = true
            }
            
            previousStack = stack
        }
    }
}
