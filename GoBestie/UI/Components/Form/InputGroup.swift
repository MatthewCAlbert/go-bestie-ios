//
//  InputGroup.swift
//  GoBestie
//
//  Created by Matthew Christopher Albert on 26/07/22.
//

import SwiftUI

class InputGroupViewModel: ObservableObject {
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
}

struct InputGroup: View {
    let label: String
    var placeholder: String = ""
    var type: InputGroupType = .input
    var options: [OptionItem] = []
    var disabled: Bool = false
    @Binding var value: String
    @State private var internalValue: String = "" {
        didSet {
            value = options.first(where: { e in e.key == internalValue })?.value ?? ""
        }
    }
    
    @StateObject var viewModel = InputGroupViewModel()
    
    struct OptionItem: Hashable {
        let key: String
        let value: String
        
        init(_ key: String, _ value: String) {
            self.key = key
            self.value = value
        }
    }
    
    enum InputGroupType {
        case input
        case textbox
        case picker
        case datepicker
        case options
        case toggle
        case password
    }
    
    var body: some View {
        VStack(spacing: 5) {
            ThemedText(value: label, weight: .medium)
                .frame(maxWidth: .infinity, alignment: .leading)
            ZStack {
                switch(type) {
                case .picker:
                    Picker(placeholder, selection: $internalValue) {
                        ForEach(options, id: \.self) {
                            Text($0.key)
                        }
                    }
                    .foregroundColor(Color.init(hex: "000000"))
                    .frame(maxWidth: .infinity)
                case .textbox:
                    if !disabled {
                        TextEditor(text: $value)
                            .textSelection(.enabled)
                            .disabled(disabled)
                    } else {
                        TextEditor(text: $value)
                    }
                case .password:
                    SecureField("", text: $value)
                        .placeHolder(Text(placeholder).foregroundColor(Color.init(hex: "868686")), show: value.isEmpty)
                        .padding(10)
                        .disabled(disabled)
                default:
                    TextField("", text: $value)
                        .placeHolder(Text(placeholder).foregroundColor(Color.init(hex: "868686")), show: value.isEmpty)
                        .padding(10)
                        .disabled(disabled)
                }
            }
            .font(Font.custom(AppFont.main.rawValue, size: 14))
            .background(Color.init(hex: "ffffff"))
            .cornerRadius(8)
        }
        .frame(maxWidth: .infinity)
    }
}

struct InputGroup_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            InputGroup(
                label: "Sample Label", value: .constant("Hello")
            )
            InputGroup(label: "Type", placeholder: "", type: .picker, options: [
                InputGroup.OptionItem("Percentage", "1"),
                InputGroup.OptionItem("Times", "2"),
            ], value: .constant(""))
        }
    }
}
