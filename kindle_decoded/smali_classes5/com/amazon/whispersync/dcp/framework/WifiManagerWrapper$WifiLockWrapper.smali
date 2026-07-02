.class public Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiLockWrapper"
.end annotation


# instance fields
.field private final mInner:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;-><init>(Landroid/net/wifi/WifiManager$WifiLock;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/wifi/WifiManager$WifiLock;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->mInner:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager$WifiLock;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;-><init>(Landroid/net/wifi/WifiManager$WifiLock;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->mInner:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public isHeld()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->mInner:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->mInner:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->mInner:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public setWorkSource(Landroid/os/WorkSource;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->mInner:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$WifiLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$WifiLockWrapper;->mInner:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
