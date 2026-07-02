.class public Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;,
        Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.WifiManagerWrapper"


# instance fields
.field private final mInner:Landroid/net/wifi/WifiManager;

.field private mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    const-string/jumbo v0, "wifi"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 1
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    .line 125
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    return-void
.end method


# virtual methods
.method public addNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    return p1
.end method

.method public createMulticastLock(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;
    .locals 2

    .line 230
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->createMulticastLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$MulticastLock;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;-><init>(Landroid/net/wifi/WifiManager$MulticastLock;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$1;)V

    return-object v0
.end method

.method public createWifiLock(ILjava/lang/String;)Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;
    .locals 2

    .line 220
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1, p2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    const/4 p2, 0x0

    invoke-direct {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;-><init>(Landroid/net/wifi/WifiManager$WifiLock;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$1;)V

    return-object v0
.end method

.method public createWifiLock(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;
    .locals 2

    .line 225
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;-><init>(Landroid/net/wifi/WifiManager$WifiLock;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$1;)V

    return-object v0
.end method

.method public disableNetwork(I)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result p1

    return p1
.end method

.method public disconnect()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->disconnect()Z

    move-result v0

    return v0
.end method

.method public enableNetwork(IZ)Z
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p1

    return p1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWifiState()I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0
.end method

.method public isAnyWifiLockHeld()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isAnyWifiLockHeld"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->getHiddenMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mReflectionHelper:Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/amazon/whispersync/dcp/framework/ReflectionHelper;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Custom WifiManager method: isAnyWifiLockHeld does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWifiEnabled()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->pingSupplicant()Z

    move-result v0

    return v0
.end method

.method public reassociate()Z
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reassociate()Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->reconnect()Z

    move-result v0

    return v0
.end method

.method public removeNetwork(I)Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    move-result p1

    return p1
.end method

.method public saveConfiguration()Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    move-result v0

    return v0
.end method

.method public setWifiEnabled(Z)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public startScan()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    return v0
.end method

.method public updateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;->mInner:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    return p1
.end method
