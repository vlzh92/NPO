#-------------------------------------------------
#
# Project created by QtCreator 2014-09-06T17:42:41
# then we go hard
#
#-------------------------------------------------

QT       += core opengl gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

TARGET = NPO

TEMPLATE = app


SOURCES += main.cpp \
    engine/animationoptions.cpp \
    engine/geometrywidget.cpp \
    engine/relationdialog.cpp \
    engine/CGL/carray.cpp \
    engine/CGL/cexpression.cpp \
    engine/CGL/cgl.cpp \
    engine/CGL/cglwidget.cpp \
    engine/CGL/cinterval.cpp \
    engine/CGL/clabel.cpp \
    engine/CGL/cmatrix.cpp \
    engine/CGL/cparallelepiped.cpp \
    engine/CGL/cparse.cpp \
    engine/CGL/crange.cpp \
    engine/CGL/cvertexes.cpp \
    engine/CGL/cylindercoordinatesystem.cpp \
    engine/CGL/rectangularcoordinatesystem.cpp \
    engine/form.cpp \
    engine/geometry.cpp \
    engine/geometryform.cpp \
    engine/geometrypair.cpp \
    engine/pseudoInverse.cpp \
    engine/core/finitelement.cpp \
    engine/core/hexa.cpp \
    engine/core/lines.cpp \
    engine/core/material.cpp \
    engine/core/quad.cpp \
    engine/core/shell.cpp \
    engine/core/tetra.cpp \
    engine/core/tria.cpp \
    application.cpp \
    identity.cpp \
    project.cpp \
    mainwindow.cpp \
    geometriesmodel.cpp \
    viewer.cpp \
    engine/CGL/ccolumnchart.cpp \
    engine/CGL/c3dchart.cpp \
    engine/CGL/cscale.cpp \
    engine/CGL/ccolorscale.cpp \
    truncationtab.cpp \
    truncationwizard.cpp \
    maintabbar.cpp \
    engine/pyParse/BDFEntity.cpp \
    engine/geometryobsoleteparse.cpp \
    engine/CGL/c2dchart.cpp \
    engine/CGL/c2dchartplace.cpp \
    engine/CGL/cchartdata.cpp \
    engine/CGL/cdimension.cpp \
    engine/CGL/cdimensionarray.cpp \
    engine/CGL/cdimensioninterval.cpp \
    engine/CGL/c2dchartaxis.cpp \
    engine/meshplace.cpp \
    engine/meshscene.cpp

HEADERS += \
    engine/animationoptions.h \
    engine/geometrywidget.h \
    engine/relationdialog.h \
    engine/CGL/carray.h \
    engine/CGL/cexpression.h \
    engine/CGL/cgl.h \
    engine/CGL/cglwidget.h \
    engine/CGL/cinterval.h \
    engine/CGL/clabel.h \
    engine/CGL/cmatrix.h \
    engine/CGL/cparallelepiped.h \
    engine/CGL/cparse.h \
    engine/CGL/crange.h \
    engine/CGL/cvertexes.h \
    engine/CGL/cylindercoordinatesystem.h \
    engine/CGL/rectangularcoordinatesystem.h \
    engine/form.h \
    engine/geometry.h \
    engine/geometryform.h \
    engine/geometrypair.h \
    engine/pseudoInverse.h \
    engine/core/finitelement.h \
    engine/core/hexa.h \
    engine/core/lines.h \
    engine/core/material.h \
    engine/core/quad.h \
    engine/core/shell.h \
    engine/core/tetra.h \
    engine/core/tria.h \
    application.h \
    identity.h \
    project.h \
    mainwindow.h \
    geometriesmodel.h \
    viewer.h \
    engine/CGL/ccolumnchart.h \
    engine/CGL/c3dchart.h \
    engine/CGL/cscale.h \
    engine/CGL/ccolorscale.h \
    truncationtab.h \
    truncationwizard.h \
    maintabbar.h \
    engine/pyParse/BDFEntity.h \
    engine/CGL/c2dchart.h \
    engine/CGL/c2dchartplace.h \
    engine/CGL/cchartdata.h \
    engine/CGL/cdimension.h \
    engine/CGL/cdimensionarray.h \
    engine/CGL/cdimensioninterval.h \
    engine/CGL/c2dchartaxis.h \
    engine/meshplace.h \
    engine/meshscene.h

OTHER_FILES += \
    summator.vert

RESOURCES += \
    res.qrc

DISTFILES += \
    css.css \
    main.json
