#include <QApplication>
#include <QTextEdit>
#include <QtWidgets>

int main(int argv, char**args){
    QApplication app(argv,args);
    QTextEdit textEdit;
    QPushButton quitButton("Fuck this");

    QObject::connect(&quitButton, SIGNAL(clicked()), qApp, SLOT(quit()));

    QVBoxLayout layout;
    layout.addWidget(&textEdit);
    layout.addWidget(&quitButton);

    QWidget window;
    window.setLayout(&layout);

    window.show();

    return app.exec();
}
