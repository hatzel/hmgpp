#include <cstddef>
#include <cursesw.h>

int main(){
    NCursesWindow window = NCursesWindow(20,20,5,5);
    window.printw("test");
    window.scanw(0);
    return 0;
}
