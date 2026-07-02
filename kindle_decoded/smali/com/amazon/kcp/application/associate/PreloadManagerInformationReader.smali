.class Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;
.super Ljava/lang/Object;
.source "PreloadManagerInformationReader.java"

# interfaces
.implements Lcom/amazon/kcp/application/associate/PreloadInformationReader;


# static fields
.field private static final METRICS_KEY:Ljava/lang/String; = "AmazonKindle"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

.field private final context:Landroid/content/Context;

.field private final metricsFactory:Lcom/amazon/maft/metrics/MetricsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->context:Landroid/content/Context;

    .line 37
    invoke-direct {p0}, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->createMetricsFactory()Lcom/amazon/maft/metrics/MetricsFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->metricsFactory:Lcom/amazon/maft/metrics/MetricsFactory;

    .line 38
    iput-object p2, p0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    return-void
.end method

.method private createMetricsFactory()Lcom/amazon/maft/metrics/MetricsFactory;
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader$1;-><init>(Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;)V

    return-object v0
.end method

.method private getPreloadAssociateTagForMarketPlace()Ljava/lang/String;
    .locals 5

    .line 76
    :try_start_0
    invoke-static {}, Lcom/amazon/appmanager/lib/PreloadManager;->getDefault()Lcom/amazon/appmanager/lib/PreloadManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->metricsFactory:Lcom/amazon/maft/metrics/MetricsFactory;

    iget-object v3, p0, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 77
    invoke-interface {v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/services/authentication/IAccountInfo;->getUserPFM()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v3, v4}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/appmanager/lib/PreloadManager;->getPreloadAssociateTag(Landroid/content/Context;Lcom/amazon/maft/metrics/MetricsFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/amazon/appmanager/lib/UnrecognizedMarketplaceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private setPreloadInformationResultForTag(Ljava/lang/String;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;
    .locals 3

    .line 64
    new-instance v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    invoke-direct {v0}, Lcom/amazon/kcp/application/associate/PreloadInformationResult;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    .line 66
    iput-boolean v1, v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->success:Z

    .line 67
    iget-object v1, v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->properties:Ljava/util/Properties;

    const-string v2, "default"

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getPreloadInformation()Lcom/amazon/kcp/application/associate/PreloadInformationResult;
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->getPreloadAssociateTagForMarketPlace()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-direct {p0, v0}, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->setPreloadInformationResultForTag(Ljava/lang/String;)Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    move-result-object v0

    return-object v0
.end method

.method public getPreloadType()Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->getPreloadInformation()Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->success:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->PLM:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;->NONE:Lcom/amazon/kcp/application/IAssociateInformationProvider$PreloadType;

    :goto_0
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kcp/application/associate/PreloadManagerInformationReader;->getPreloadInformation()Lcom/amazon/kcp/application/associate/PreloadInformationResult;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amazon/kcp/application/associate/PreloadInformationResult;->success:Z

    return v0
.end method
