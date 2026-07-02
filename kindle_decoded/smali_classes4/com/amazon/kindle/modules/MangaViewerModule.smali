.class public Lcom/amazon/kindle/modules/MangaViewerModule;
.super Ljava/lang/Object;
.source "MangaViewerModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# static fields
.field private static moduleInstance:Lcom/amazon/kindle/modules/MangaViewerModule;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    sget-object v0, Lcom/amazon/kindle/modules/MangaViewerModule;->moduleInstance:Lcom/amazon/kindle/modules/MangaViewerModule;

    if-nez v0, :cond_0

    .line 38
    sput-object p0, Lcom/amazon/kindle/modules/MangaViewerModule;->moduleInstance:Lcom/amazon/kindle/modules/MangaViewerModule;

    return-void

    .line 43
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Module constructors can only be called once."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isComic(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 1

    .line 69
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->COMIC:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isManga(Lcom/amazon/kindle/model/content/ILocalBookInfo;)Z
    .locals 1

    .line 65
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getContentClass()Lcom/amazon/kindle/model/content/ContentClass;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/model/content/ContentClass;->MANGA:Lcom/amazon/kindle/model/content/ContentClass;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getDependentModules()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MangaViewerModule"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    .line 50
    new-instance v0, Lcom/amazon/android/docviewer/MangaDocViewerFactory;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/MangaDocViewerFactory;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/IReaderController;->registerKindleDocViewerFactory(Lcom/amazon/android/docviewer/KindleDocViewerFactory;)V

    .line 51
    new-instance v0, Lcom/amazon/kindle/mangaviewer/MangaPagerActivityFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/mangaviewer/MangaPagerActivityFactory;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/IReaderController;->registerActivityFactory(Lcom/amazon/kcp/application/ActivityFactory;)V

    return-void
.end method
