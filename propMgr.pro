#-------------------------------------------------
#
# Project created by QtCreator 2018-09-08T11:27:51
#
#-------------------------------------------------

QT       += core gui widgets qml quick

TARGET = propMgr
TEMPLATE = app

# The following define makes your compiler emit warnings if you use
# any feature of Qt which has been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

CONFIG += c++14

SOURCES += \
        main.cpp \
    mainwindow.cpp \
    master-controller.cpp \
    client.cpp

HEADERS += \
    mainwindow.h \
    master-controller.h \
    navigation-controller.h \
    client.h \
    client.h

FORMS += \
    mainwindow.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    README.md \
    LICENSE \
    SplashView.qml \
    DashboardView.qml \
    CreateClientView.qml \
    EditClientView.qml \
    FindClientView.qml \
    CreateClientView.qml \
    DashboardView.qml \
    EditClientView.qml \
    FindClientView.qml \
    SplashView.qml \
    main.qml \
    Style.qml \
    qmldir

RESOURCES += \
    propmgr.qrc \
    assets.qrc


QML_IMPORT_PATH += $$PWD line
