//
//  DropdownMenuOption.swift
//  DropdownMenu
//
//  Created by Abdelrahman Talaat on 28/11/2022.
//

import Foundation

// We are going to use this type with ForEach, so we need to conform it to
// Hashable protocol.
struct DropdownMenuOption: Identifiable, Hashable {
	let id = UUID().uuidString
	let option: String
}

extension DropdownMenuOption {
	static let testSingleMonth: DropdownMenuOption = DropdownMenuOption(option: "March")
	static let testAllMonths: [DropdownMenuOption] = [
		DropdownMenuOption(option: "Tesla"),
		DropdownMenuOption(option: "Volkswagen ID4/ID6"),
		DropdownMenuOption(option: "Porsche"),
		DropdownMenuOption(option: "Audi"),
		DropdownMenuOption(option: "BMW"),
		DropdownMenuOption(option: "Others"),
	]
}
