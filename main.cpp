#include <QtWidgets>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "mainwindow.h"
#include "master-controller.h"


int main(int argc, char *argv[])
{
    QApplication a(argc, argv);

    qmlRegisterType<cm::controllers::MasterController>("CM", 1, 0, "MasterController");
    cm::controllers::MasterController masterController;

    qmlRegisterType<cm::controllers::NavigationController>("CM", 1, 0, "NavigationController");

    QQmlApplicationEngine engine;

    engine.addImportPath("qrc:/propMgr");

    engine.rootContext()->setContextProperty("masterController", &masterController);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

//    engine.load(QUrl(QStringLiteral("qrc:/AnchorsDemo.qml")));


//    MainWindow w;
//    w.show();

    return a.exec();
}
