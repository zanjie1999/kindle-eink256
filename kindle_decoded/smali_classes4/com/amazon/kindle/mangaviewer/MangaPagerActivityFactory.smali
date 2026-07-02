.class public Lcom/amazon/kindle/mangaviewer/MangaPagerActivityFactory;
.super Ljava/lang/Object;
.source "MangaPagerActivityFactory.java"

# interfaces
.implements Lcom/amazon/kcp/application/ActivityFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getReaderActivity(Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/reader/ReaderActivity;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getReddingActivity(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/os/Bundle;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/android/docviewer/KindleDoc;",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/kcp/redding/ReddingActivity;",
            ">;"
        }
    .end annotation

    .line 33
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getFileName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->hasMobiExtension(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1}, Lcom/amazon/kindle/modules/MangaViewerModule;->isManga(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Lcom/amazon/kindle/modules/MangaViewerModule;->isComic(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 35
    :cond_0
    sget p1, Lcom/amazon/kindle/kmv/R$string;->manga_pager_activity:I

    invoke-static {p1}, Lcom/amazon/kcp/application/ActivityFactoryUtils;->getActivityClassFromRes(I)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
