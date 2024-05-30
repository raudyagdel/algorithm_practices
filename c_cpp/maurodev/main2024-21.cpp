#include <bits/stdc++.h>
using namespace std;

using EventCallback = function<void(any)>;

typedef struct {
    any data;
    EventCallback callback;
} Event;

void process_event(Event event) {
    event.callback(event.data);
}

void handle_mouse_click(any data) {
    auto coords = any_cast<vector<int>>(data);
    cout << "Mouse clicked at (" << coords[0] << ", " << coords[1] << ")" << endl;
}

void handle_keyboard_press(any data) {
    auto key = any_cast<int>(data);
    cout << "Keyboard key pressed: " << key << endl;
}

int main() {

    int x = 0;
    auto add = [](int a, int b) -> int { return a + b; };
    auto result = add(3,4);
    printf("%d\n",result);

    vector<int> mouse_coords = {10, 20};
    int key = 27;

    Event mouse_event = {mouse_coords, handle_mouse_click};
    process_event(mouse_event);

    Event keyboard_event = {key, handle_keyboard_press};
    process_event(keyboard_event);

    return 0;
}