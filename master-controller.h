#ifndef MASTERCONTROLLER_H
#define MASTERCONTROLLER_H

#include <QObject>
#include <QScopedPointer>
#include <QString>
#include <navigation-controller.h>

namespace cm {
namespace controllers {

class MasterController : public QObject
{
//    QString welcomeMessage = "This is MasterController to Major Tom";

    Q_OBJECT

//    Q_PROPERTY( QString ui_welcomeMessage MEMBER welcomeMessage CONSTANT )
    Q_PROPERTY( cm::controllers::NavigationController* ui_navigationController READ navigationController CONSTANT )

public:
    explicit MasterController(QObject* parent = nullptr);
    ~MasterController();

    NavigationController* navigationController();
//    const QString& welcomeMessage() const;

private:
    class Implementation;
    QScopedPointer<Implementation> implementation;
};

}}

#endif // MASTERCONTROLLER_H
