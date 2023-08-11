from robot.api.deco import library,keyword
from robot.libraries.BuiltIn import BuiltIn


@library
class Shop:
    def __init__(self):
        self.selLib=BuiltIn().get_library_instance("SeleniumLibrary")
    @keyword
    def hello_world(self):
        print("hello")

    @keyword
    def add_items_to_cart_and_checkout(self,products):
        i = 1
        productstitles=self.selLib.get_webelements("css:.card-title")
        for productTitle in productstitles:
            if productTitle.text in products:
                self.selLib.click_button("xpath:(//*[text()='Add '])["+str(i)+"]")

            i = i+1

