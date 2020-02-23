#include <iostream>
#include <vector>
#include <sstream>

class StringField {
private:
    std::vector<std::string> line;
public:
    bool readLine(const std::string& buffer_line) {
        std::string buffer_word;
        std::stringstream buffer_stream(buffer_line);

        while (std::getline(buffer_stream, buffer_word, '\t')) {
            addWord(buffer_word);
        }

        return true;
    }

    bool addWord(const std::string& word) {
        line.push_back(word);

        return true;
    }

    bool editWord(const size_t & index, const std::string& word) {
        line.at(index) = word;

        return true;
    };

    bool deleteWord(const size_t& index) {
        line.erase(line.begin() + index);

        return true;
    }

    void drawWords() const {
        for (const auto& word : line) {
            std::cout << word << '\t';
        }
    }
};

class StringFieldsHolder {
private:
    std::vector<StringField> strings;
public:
    void drawString(const size_t& index) const {
        strings.at(index).drawWords();
        std::cout << std::endl;
    }

    bool drawStrings() const {
        try {
            for (const auto &string_field : strings) {
                string_field.drawWords();
                std::cout << std::endl;
            }
        } catch (const std::exception& e) {
            std::cout << e.what() << std::endl;
            return false;
        }

        return true;
    }

    bool readStrings() {
        std::string buffer_line;

        while (!std::cin.eof()) {
            StringField tmp;
            std::getline(std::cin, buffer_line);
            tmp.readLine(buffer_line);
            strings.push_back(tmp);
        }

        return true;
    }

    bool addWordToField(const size_t& indexField, const std::string& word) {
        strings.at(indexField).addWord(word);
        drawString(indexField);

        return true;
    }

    bool editWordInField(const size_t& indexWord, const size_t & indexField, const std::string& new_value) {
        strings.at(indexField).editWord(indexWord, new_value);
        drawString(indexField);

        return true;
    };

    bool deleteWordInField(const size_t& indexWord, const size_t& indexField) {
        strings.at(indexField).deleteWord(indexWord);
        drawString(indexField);

        return true;
    }
};

int main() {
    StringFieldsHolder stringFieldsHolder;

    try {
        stringFieldsHolder.readStrings();

//        stringFieldsHolder.addWordToField(1, "newField");
//        stringFieldsHolder.addWordToField(0, "newField2");
//
//        stringFieldsHolder.editWordInField(0, 0, "editedField");
//
//        stringFieldsHolder.deleteWordInField(0, 1);
//        stringFieldsHolder.deleteWordInField(1, 1);
//
//        stringFieldsHolder.drawStrings();
    } catch (const std::exception& e) { // basic exception handling
        std::cout << e.what() << std::endl;
        return -1;
    }

    return 0;
}
