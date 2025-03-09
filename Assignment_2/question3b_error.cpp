#include <iostream>
#include <string>

int main(){
    int num = 10;
    std::string str = "20";
    std::cout << num + stoi(str) << std::endl;
}

// creates an error due to it adding an integer and a string
// I would fix this by converting the string to an integer by doing:
// std::cout << num + stoi(str) << std::endl;