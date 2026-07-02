.class public final Lcom/amazon/kcp/store/StoreDomainResolver;
.super Ljava/lang/Object;
.source "StoreDomainResolver.kt"


# instance fields
.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/store/StoreDomainResolver;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 16
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/store/StoreDomainResolver;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 17
    iget-object p1, p0, Lcom/amazon/kcp/store/StoreDomainResolver;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    :cond_1
    iput-object v0, p0, Lcom/amazon/kcp/store/StoreDomainResolver;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    return-void
.end method


# virtual methods
.method public final hostnameForCurrentPfm()Ljava/lang/String;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreDomainResolver;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_2

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/store/StoreDomainResolver;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 26
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/store/StoreDomainResolver;->storeManager:Lcom/amazon/kindle/krx/store/IStoreManager;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/store/IStoreManager;->getStoreHostnameFromPfm(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    return-object v1
.end method
