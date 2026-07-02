.class Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;
.super Ljava/lang/Object;
.source "AndroidWifiLockManager.java"

# interfaces
.implements Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/network/AndroidWifiLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AndroidWifiLock"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/network/AndroidWifiLockManager;

.field private wakeLock:Landroid/os/PowerManager$WakeLock;

.field private wifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/network/AndroidWifiLockManager;)V
    .locals 3

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->this$0:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {p1}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$100(Lcom/amazon/kindle/network/AndroidWifiLockManager;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$000(Lcom/amazon/kindle/network/AndroidWifiLockManager;)I

    move-result v1

    const-string v2, "ReddingWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    .line 59
    invoke-static {p1}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$300(Lcom/amazon/kindle/network/AndroidWifiLockManager;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$200(Lcom/amazon/kindle/network/AndroidWifiLockManager;)I

    move-result p1

    const-string v1, "ReddingWifiLock"

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/network/AndroidWifiLockManager;Lcom/amazon/kindle/network/AndroidWifiLockManager$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;-><init>(Lcom/amazon/kindle/network/AndroidWifiLockManager;)V

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 66
    invoke-static {}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Releasing Wake lock, but it was held on object destroy"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 71
    invoke-static {}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Releasing Wifi lock, but it was held on object destroy"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public lock()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    return-void
.end method

.method public performRealRelease()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wifi lock is not held on performRealRelease()"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 118
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wake lock is not held on performRealRelease()"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public release()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->this$0:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->releaseDelayed(Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;)V

    return-void
.end method
