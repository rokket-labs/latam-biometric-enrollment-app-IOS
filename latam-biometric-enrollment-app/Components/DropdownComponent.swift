//
//  DropdownComponent.swift
//  latam-biometric-enrollment-app
//
//  Created by Nicolas Perez on 09-03-20.
//  Copyright © 2020 Nicolas Perez. All rights reserved.
//

import SwiftUI

struct DropdownComponent: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}


struct DropdownOption: Hashable {
    public static func == (lhs: DropdownOption, rhs: DropdownOption) -> Bool {
        return lhs.key == rhs.key
    }

    var key: String
    var val: String
}

struct DropdownOptionElement: View {
    var val: String
    var key: String
    var onSelect: ((_ key: String) -> Void)?

    var body: some View {
        GeometryReader { reader in
            Button(action: {
                if let onSelect = self.onSelect {
                    onSelect(self.key)
                }
            }) {
                Text(self.val).font(.custom("LatamSansST-Regular", size: 20)).foregroundColor(Color.white)
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 5)
        }
    }
}

struct Dropdown: View {
    var options: [DropdownOption]
    var onSelect: ((_ key: String) -> Void)?

    var body: some View {
        
        List {
            ForEach(self.options, id: \.self) { option in
                DropdownOptionElement(val: option.val, key: option.key, onSelect: self.onSelect)
            }
        }
        .background(Color.white)
        .frame(width: 250, height: 300)
        .cornerRadius(20)
        
       
    }
}

struct DropdownButton: View {
    @State var shouldShowDropdown = false
    @Binding var displayText: String
    var options: [DropdownOption]
    var onSelect: ((_ key: String) -> Void)?

    let buttonHeight: CGFloat = 30
    var body: some View {
        GeometryReader {reader in
            
        Button(action: {
            self.shouldShowDropdown.toggle()
        }) {
            HStack {
                Text(self.displayText).font(.custom("LatamSansST-Regular", size: reader.size.width * 0.04))
                    
                Spacer()
                Image(systemName: self.shouldShowDropdown ? "chevron.up" : "chevron.down")
            }
        }
        .padding(.horizontal)
        .cornerRadius(20)
        .frame(height: self.buttonHeight)
        .background(
            Color.white.opacity(0)
        )
            
            
                if self.shouldShowDropdown {
                    VStack {
                    Spacer(minLength: self.buttonHeight + 10)
                    Dropdown(options: self.options, onSelect: self.onSelect)
                    }.zIndex(3)
            }
        }
    }
}

struct DropdownComponent_Previews: PreviewProvider {
    static let options = [
        DropdownOption(key: "week", val: "This week"), DropdownOption(key: "month", val: "This month"), DropdownOption(key: "year", val: "This year"),DropdownOption(key: "wedek", val: "This week"),DropdownOption(key: "weaek", val: "This week"),DropdownOption(key: "wdeek", val: "This week"),DropdownOption(key: "weesk", val: "This week"),DropdownOption(key: "week", val: "This week"),DropdownOption(key: "week", val: "This week"),DropdownOption(key: "week", val: "This week"),DropdownOption(key: "week", val: "This week")
    ]

    static let onSelect = { key in
        print(key)
    }

    static var previews: some View {
        Group {
            VStack(alignment: .leading) {
                DropdownButton(displayText: .constant("This month"), options: options, onSelect: onSelect)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .foregroundColor(Color.black)

            VStack(alignment: .leading) {
                DropdownButton(shouldShowDropdown: true, displayText: .constant("This month"), options: options, onSelect: onSelect)
                Dropdown(options: options, onSelect: onSelect)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.white)
            .foregroundColor(Color.black)
        }
    }
}
