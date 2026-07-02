.class public Lcom/amazon/nwstd/modules/NewsstandForStandAloneModule;
.super Ljava/lang/Object;
.source "NewsstandForStandAloneModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# instance fields
.field private final mModuleName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NewsstandForStandAloneModule"

    .line 13
    iput-object v0, p0, Lcom/amazon/nwstd/modules/NewsstandForStandAloneModule;->mModuleName:Ljava/lang/String;

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

    const-string v0, "NewsstandForStandAloneModule"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 17
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    .line 18
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    .line 20
    new-instance v0, Lcom/amazon/nwstd/modules/NewsstandActivityFactoryForStandalone;

    invoke-direct {v0}, Lcom/amazon/nwstd/modules/NewsstandActivityFactoryForStandalone;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kcp/reader/IReaderController;->registerActivityFactory(Lcom/amazon/kcp/application/ActivityFactory;)V

    return-void
.end method
