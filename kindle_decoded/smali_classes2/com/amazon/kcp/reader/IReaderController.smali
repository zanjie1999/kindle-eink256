.class public interface abstract Lcom/amazon/kcp/reader/IReaderController;
.super Ljava/lang/Object;
.source "IReaderController.java"

# interfaces
.implements Lcom/amazon/kcp/application/Historizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;,
        Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;,
        Lcom/amazon/kcp/reader/IReaderController$StartPageBeginning;,
        Lcom/amazon/kcp/reader/IReaderController$StartPageDefault;,
        Lcom/amazon/kcp/reader/IReaderController$StartPage;,
        Lcom/amazon/kcp/reader/IReaderController$StartPageVisitor;
    }
.end annotation


# virtual methods
.method public abstract currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;
.end method

.method public abstract getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
.end method

.method public abstract getDocViewerGenerator()Lcom/amazon/android/docviewer/KindleDocViewerGenerator;
.end method

.method public abstract getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;
.end method

.method public abstract getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;Z)V
.end method

.method public abstract openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;)V
.end method

.method public abstract openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;)V
.end method

.method public abstract openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;ZLandroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract openReaderByIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;)V
.end method

.method public abstract openReaderByIntent(Lcom/amazon/kindle/model/content/ILocalBookItem;Landroid/app/Activity;Landroid/content/Intent;I)V
.end method

.method public abstract prepareOpenReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;ZLandroid/app/Activity;)Landroid/content/Intent;
.end method

.method public abstract registerActivityFactory(Lcom/amazon/kcp/application/ActivityFactory;)V
.end method

.method public abstract registerDefaultKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V
.end method

.method public abstract registerKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V
.end method
