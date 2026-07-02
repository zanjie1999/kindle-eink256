.class public Lcom/amazon/kindle/speedreading/SpeedReadingPlugin;
.super Ljava/lang/Object;
.source "SpeedReadingPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "Speed Reading Plugin"
    scope = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Scope;->application:Lcom/amazon/kindle/krx/plugin/Plugin$Scope;
.end annotation


# instance fields
.field private doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
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

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 23
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/SpeedReadingPlugin;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    .line 24
    invoke-static {}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->getInstance()Lcom/amazon/kindle/speedreading/toc/TOCUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/toc/TOCUtil;->setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 25
    invoke-static {}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->getInstance()Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeUtils;->setReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 26
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/SpeedReadingPlugin;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/speedreading/header/DoubletimeTabletHeaderButtonProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionButtonProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    .line 28
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/SpeedReadingPlugin;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/speedreading/header/DoubletimeSAHeaderButtonProvider;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerCustomActionButtonProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 29
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;

    iget-object v2, p0, Lcom/amazon/kindle/speedreading/SpeedReadingPlugin;->doubletimeController:Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    invoke-direct {v1, p1, v2}, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerActivityLifecycleListener(Lcom/amazon/kindle/krx/reader/IReaderActivityLifecycleListener;)V

    return-void
.end method
