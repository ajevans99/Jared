JsOsaDAS1.001.00bplist00�Vscript_let systemEvents = Application('System Events')

var messages = systemEvents.applicationProcesses.byName('Messages');
let textArea = messages.windows.byName("Messages").splitterGroups.at(0).scrollAreas.at(3).textAreas.at(0)
let toField = messages.windows.byName("Messages").splitterGroups.at(0).scrollAreas.at(2).textFields.byName("To:")

let messagesMenus = messages.menuBars[0].menuBarItems;
let newMessageMenu = messagesMenus.byName('File').menus[0].menuItems.byName('New Message')
let sendMessageMenu = messagesMenus.byName('Edit').menus[0].menuItems.byName('Send Message')

function run(input) {
	Application('Messages').activate()
	delay(0.1)
	newMessageMenu.click()
	toField.value = input[1]
	systemEvents.keyCode(36);
	textArea.value = input[0]
	sendMessageMenu.click()
}                              ! jscr  ��ޭ