#ifndef TRUNCATIONWIZARD_H
#define TRUNCATIONWIZARD_H

#include <QDialog>
#include "engine/geometrypair.h"
#include <QComboBox>
#include "engine/geometrywidget.h"
#include <QVBoxLayout>
#include "application.h"
#include "project.h"
#include "engine/relationdialog.h"
#include "engine/CGL/ccolumnchart.h"

class TruncationWizard : public QDialog
{
    Q_OBJECT

    class Preview;
    Preview* first;
    Preview* second;

    RelationDialog* relation;

    CGL::CColumnChart* chart;

    GeometryPair* current;

    TruncationWizard(QWidget* parent = 0);
    ~TruncationWizard();
public:

    static GeometryPair* exec(QWidget* parent);

private slots:
    void previewPatrol();
};

class TruncationWizard::Preview : public QWidget {
    Q_OBJECT

    QComboBox* selector;
    GeometryWidget* screen;
    std::vector<GeometryForm* const> meshes;
public:
    Preview(Qt::ToolBarArea area, QWidget* parent = 0)
        : QWidget(parent)
        , selector(new QComboBox(this))
        , screen(new GeometryWidget(this))
    {
        this->setLayout(new QVBoxLayout);
        foreach (Geometry* const g, Application::project()->modelsList()) {
            GeometryForm* const item(dynamic_cast<GeometryForm*>(g));
            if (item && item->modesCount()) {
                meshes.push_back(item);
                selector->addItem(item->getName());
            }
        }
        if (Qt::BottomToolBarArea == area) {
            this->layout()->addWidget(screen);
            this->layout()->addWidget(selector);
            if (meshes.size() >= 2) {
                selector->setCurrentIndex(1);
            }
        } else {
            this->layout()->addWidget(selector);
            this->layout()->addWidget(screen);
        }
        this->connect(selector, SIGNAL(currentIndexChanged(int)), SLOT(selectorPatrol()));
        selectorPatrol();
    }

    GeometryForm* current() const
    {
        return selector->currentIndex() < meshes.size() && selector->currentIndex() >= 0
                ? meshes.at(selector->currentIndex()) : 0;
    }
signals:
    void meshSelected(int id);
    void meshSelected(GeometryForm*);

private slots:
    void selectorPatrol()
    {
        GeometryForm* c(current());

        screen->setModel(c);

        emit meshSelected(c);

        const Project::Geometries& m(Application::project()->modelsList());
        int i(0);
        while (m.at(i) != c && m.size() > i) {
            ++i;
        }
        emit meshSelected(i < m.size() ? i : -1);
    }
};

#endif // TRUNCATIONWIZARD_H
