.class public Lcom/amazon/kindle/module/StandAloneReaderModule;
.super Ljava/lang/Object;
.source "StandAloneReaderModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    const-string v0, "StandAloneReaderModule"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 44
    check-cast p1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 45
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    .line 47
    new-instance v0, Lcom/amazon/kindle/module/StandAloneReaderActivityFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/module/StandAloneReaderActivityFactory;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/IReaderController;->registerActivityFactory(Lcom/amazon/kcp/application/ActivityFactory;)V

    return-void
.end method
