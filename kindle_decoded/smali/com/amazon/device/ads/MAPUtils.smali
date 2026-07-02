.class public Lcom/amazon/device/ads/MAPUtils;
.super Ljava/lang/Object;
.source "MAPUtils.java"


# instance fields
.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final isMAPAvailable:Z

.field private final mapAccountManagerFactory:Lcom/amazon/device/ads/MAPAccountManagerFactory;

.field private mapAcctMgr:Lcom/amazon/device/ads/AccountManagerWrapper;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 18
    new-instance v0, Lcom/amazon/device/ads/ReflectionUtils;

    invoke-direct {v0}, Lcom/amazon/device/ads/ReflectionUtils;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v1

    new-instance v2, Lcom/amazon/device/ads/MAPAccountManagerFactory;

    invoke-direct {v2}, Lcom/amazon/device/ads/MAPAccountManagerFactory;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/amazon/device/ads/MAPUtils;-><init>(Lcom/amazon/device/ads/ReflectionUtils;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MAPAccountManagerFactory;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/ReflectionUtils;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/MAPAccountManagerFactory;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.amazon.identity.auth.device.api.MAPAccountManager"

    .line 23
    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/ReflectionUtils;->isClassAvailable(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/device/ads/MAPUtils;->isMAPAvailable:Z

    .line 24
    iput-object p2, p0, Lcom/amazon/device/ads/MAPUtils;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 25
    iput-object p3, p0, Lcom/amazon/device/ads/MAPUtils;->mapAccountManagerFactory:Lcom/amazon/device/ads/MAPAccountManagerFactory;

    if-eqz p1, :cond_0

    .line 28
    invoke-virtual {p3}, Lcom/amazon/device/ads/MAPAccountManagerFactory;->getMapAccountManager()Lcom/amazon/device/ads/AccountManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/MAPUtils;->mapAcctMgr:Lcom/amazon/device/ads/AccountManagerWrapper;

    :cond_0
    return-void
.end method


# virtual methods
.method public getDirectedId()Ljava/lang/String;
    .locals 3

    .line 41
    iget-boolean v0, p0, Lcom/amazon/device/ads/MAPUtils;->isMAPAvailable:Z

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/MAPUtils;->mapAcctMgr:Lcom/amazon/device/ads/AccountManagerWrapper;

    invoke-interface {v0}, Lcom/amazon/device/ads/AccountManagerWrapper;->getAccount()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/amazon/device/ads/MAPUtils;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    const-string v2, "debug.directedId"

    invoke-virtual {v1, v2, v0}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMAPAvailable()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/amazon/device/ads/MAPUtils;->isMAPAvailable:Z

    return v0
.end method
