.class public Lcom/amazon/kcp/library/StandAloneContentManagementSystemModule;
.super Ljava/lang/Object;
.source "StandAloneContentManagementSystemModule.java"

# interfaces
.implements Lcom/amazon/kindle/config/Module;


# instance fields
.field private cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
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

    const-string v0, "ContentManagementSystem"

    return-object v0
.end method

.method public initialize(Landroid/content/Context;)V
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;

    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/StandAloneContentManagementSystemModule;->cmsClient:Lcom/amazon/kindle/cms/IContentManagementSystem;

    return-void
.end method
