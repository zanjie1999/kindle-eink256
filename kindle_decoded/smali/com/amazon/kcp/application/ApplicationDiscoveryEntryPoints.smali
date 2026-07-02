.class public Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPoints;
.super Ljava/lang/Object;
.source "ApplicationDiscoveryEntryPoints.java"

# interfaces
.implements Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;


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

.field private final registrationProviderFactory:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kcp/accounts/RegistrationProviderFactory;",
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
            "Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;",
            ">;",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ">;",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kcp/accounts/RegistrationProviderFactory;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPoints;->krlForDownloadFacade:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    .line 43
    iput-object p3, p0, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPoints;->registrationProviderFactory:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;
    .locals 2

    .line 20
    const-class v0, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;

    .line 21
    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPointsInterface;

    if-eqz v0, :cond_0

    return-object v0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Entry points instance not found in Discovery."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getKrlForDownloadFacade()Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPoints;->krlForDownloadFacade:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v0}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    return-object v0
.end method

.method public getRegistrationProviderFactory()Lcom/amazon/kcp/accounts/RegistrationProviderFactory;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/application/ApplicationDiscoveryEntryPoints;->registrationProviderFactory:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v0}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/accounts/RegistrationProviderFactory;

    return-object v0
.end method
