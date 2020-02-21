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

    bool replaceWord(const size_t & index, const std::string& word) {
        line.at(index) = word;

        return true;
    }

    bool editWord(const size_t & index, const std::string& new_value) {
        line.at(index) = new_value;

        return true;
    };

    bool deleteWord(const size_t& index) {
        line.erase(line.begin() + index);

        return true;
    }

    void drawWord() const {
        for (const auto& word : line) {
            std::cout << word << '\t';
        }
    }
};

class StringFieldsHolder {
private:
    std::vector<StringField> strings;
public:
    bool readStrings() {
        std::string buffer_line;

        while (std::getline(std::cin, buffer_line)) {
            StringField tmp;
            tmp.readLine(buffer_line);
            strings.push_back(tmp);
        }

        return true;
    }

    bool addWordToField(const size_t& indexField, const std::string& word) {
        strings.at(indexField).addWord(word);

        return true;
    }

    bool replaceWordInField(const size_t& indexWord, const size_t& indexField, const std::string& word) {
        strings.at(indexField).replaceWord(indexField, word);

        return true;
    }

    bool editWordInField(const size_t& indexWord, const size_t & indexField, const std::string& new_value) {
        strings.at(indexField).editWord(indexWord, new_value);

        return true;
    };

    bool deleteWord(const size_t& index) {
        strings.erase(strings.begin() + index);

        return true;
    }

    void drawStrings() {
        for (auto string_field : strings) {
            string_field.drawWord();
            std::cout << '\n';
        }
    }
};

int main() {
    StringFieldsHolder stringFieldsHolder;

    stringFieldsHolder.readStrings();

//    stringFieldsHolder.addField(0, 1, "newField");
//    stringFieldsHolder.editField(4, "editedField");
//    stringFieldsHolder.deleteField(5);

    stringFieldsHolder.drawStrings();

    return 0;
}
