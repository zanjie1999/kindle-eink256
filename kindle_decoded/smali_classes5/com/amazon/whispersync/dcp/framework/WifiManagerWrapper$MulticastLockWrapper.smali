.class public Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;
.super Ljava/lang/Object;
.source "WifiManagerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MulticastLockWrapper"
.end annotation


# instance fields
.field private final mInner:Landroid/net/wifi/WifiManager$MulticastLock;


# direct methods
.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 74
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;-><init>(Landroid/net/wifi/WifiManager$MulticastLock;)V

    return-void
.end method

.method private constructor <init>(Landroid/net/wifi/WifiManager$MulticastLock;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;->mInner:Landroid/net/wifi/WifiManager$MulticastLock;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiManager$MulticastLock;Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$1;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;-><init>(Landroid/net/wifi/WifiManager$MulticastLock;)V

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;->mInner:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->acquire()V

    return-void
.end method

.method public isHeld()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;->mInner:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->isHeld()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;->mInner:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->release()V

    return-void
.end method

.method public setReferenceCounted(Z)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;->mInner:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager$MulticastLock;->setReferenceCounted(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/WifiManagerWrapper$MulticastLockWrapper;->mInner:Landroid/net/wifi/WifiManager$MulticastLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$MulticastLock;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
