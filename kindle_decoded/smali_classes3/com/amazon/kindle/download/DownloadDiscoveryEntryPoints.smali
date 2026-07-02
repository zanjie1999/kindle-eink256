.class public Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;
.super Ljava/lang/Object;
.source "DownloadDiscoveryEntryPoints.java"

# interfaces
.implements Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;


# instance fields
.field private final krlForDownloadFacade:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;"
        }
    .end annotation
.end field

.field private final readerDownloadModule:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/download/IReaderDownloadModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/discovery/RequiredUniqueDiscovery;Lcom/amazon/discovery/RequiredUniqueDiscovery;Lcom/amazon/discovery/RequiredUniqueDiscovery;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;",
            ">;",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/download/IReaderDownloadModule;",
            ">;",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->readerDownloadModule:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    .line 42
    iput-object p3, p0, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->krlForDownloadFacade:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;
    .locals 2

    .line 19
    const-class v0, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    .line 20
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPointsInterface;

    if-eqz v0, :cond_0

    return-object v0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry points instance not found in Discovery."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->krlForDownloadFacade:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v0}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    return-object v0
.end method

.method public getReaderDownloadModule()Lcom/amazon/kindle/download/IReaderDownloadModule;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/download/DownloadDiscoveryEntryPoints;->readerDownloadModule:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v0}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/download/IReaderDownloadModule;

    return-object v0
.end method
