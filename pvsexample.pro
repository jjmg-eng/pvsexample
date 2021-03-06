######################################################################
# generated by pvdevelop at: Mi Nov 8 11:58:45 2006
######################################################################

TEMPLATE = app
CONFIG  += warn_on release console
CONFIG  -= qt

# Input
HEADERS += pvapp.h      \
           mask11_slots.h \
           mask10_slots.h \
           mask9_slots.h \
           mask8_slots.h \
           mask7_slots.h \
           mask6_slots.h \
           mask5_slots.h \
           mask4_slots.h \
           mask3_slots.h \
           mask2_slots.h \
           mask1_slots.h
SOURCES += main.cpp     \
           mask11.cpp \
           mask10.cpp \
           mask9.cpp \
           mask8.cpp \
           mask7.cpp \
           mask6.cpp \
           mask5.cpp \
           mask4.cpp \
           mask3.cpp \
           mask2.cpp \
           mask1.cpp

!macx {
//unix:LIBS       += /usr/lib/libpvsmt.so -lpthread
#unix:LIBS         += /opt/pvb/pvserver/libpvsmt.so.1.0.0 -lpthread
unix:LIBS         += /opt/pvb/pvserver/libpvsmt.so
unix:LIBS         += -lpthread -lrllib
#unix:LIBS        += /usr/lib/libpvsid.so
unix:INCLUDEPATH  += /opt/pvb/pvserver
#unix:LIBS         += /opt/pvb/rllib/lib/librllib.so.1.0.0
unix:INCLUDEPATH  += /opt/pvb/rllib/lib
}

macx:LIBS          += /opt/pvb/pvserver/libpvsmt.a /usr/lib/libpthread.dylib
#macx:LIBS         += /opt/pvb/pvserver/libpvsid.a
macx:INCLUDEPATH   += /opt/pvb/pvserver
macx:LIBS         += /usr/lib/librllib.dylib
macx:INCLUDEPATH  += /opt/pvb/rllib/lib

#
# Attention:
# starting with mingw 4.8 we use mingw pthread and not our own mapping to windows threads
# you will have to adjust existing pro files
#
win32-g++ {
QMAKE_LFLAGS      += -static-libgcc
win32:LIBS        += $(PVBDIR)/win-mingw/bin/libserverlib.a 
win32:LIBS        += $(PVBDIR)/win-mingw/bin/librllib.a
win32:LIBS        += -lws2_32 -ladvapi32 -lpthread
win32:INCLUDEPATH += $(PVBDIR)/pvserver
win32:INCLUDEPATH += $(PVBDIR)/rllib/lib
}

#DEFINES += USE_INETD
TARGET = pvsexample
