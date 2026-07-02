.class interface abstract Lcom/amazon/android/docviewer/mobi/MobiObjectSelector$ActionHandler;
.super Ljava/lang/Object;
.source "MobiObjectSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiObjectSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "ActionHandler"
.end annotation


# virtual methods
.method public abstract canHandleAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
.end method

.method public abstract canHandleFallbackAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
.end method

.method public abstract executeActiveArea(Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;)Z
.end method

.method public abstract handleAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
.end method

.method public abstract handleFallbackAction(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;)Z
.end method

.method public abstract shouldExecuteActiveArea(Lcom/amazon/android/docviewer/IObjectSelector$UserAction;J)Z
.end method
