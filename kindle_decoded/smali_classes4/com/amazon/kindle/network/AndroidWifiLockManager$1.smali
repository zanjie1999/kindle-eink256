.class Lcom/amazon/kindle/network/AndroidWifiLockManager$1;
.super Ljava/lang/Object;
.source "AndroidWifiLockManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/network/AndroidWifiLockManager;->releaseDelayed(Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/network/AndroidWifiLockManager;

.field final synthetic val$wifiLock:Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/network/AndroidWifiLockManager;Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;->this$0:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    iput-object p2, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;->val$wifiLock:Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;->this$0:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    invoke-static {v0}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$600(Lcom/amazon/kindle/network/AndroidWifiLockManager;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;->this$0:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    invoke-static {v1}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$600(Lcom/amazon/kindle/network/AndroidWifiLockManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;->val$wifiLock:Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;->this$0:Lcom/amazon/kindle/network/AndroidWifiLockManager;

    invoke-static {v1}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$600(Lcom/amazon/kindle/network/AndroidWifiLockManager;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;->val$wifiLock:Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 214
    iget-object v1, p0, Lcom/amazon/kindle/network/AndroidWifiLockManager$1;->val$wifiLock:Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;

    invoke-virtual {v1}, Lcom/amazon/kindle/network/AndroidWifiLockManager$AndroidWifiLock;->performRealRelease()Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    invoke-static {}, Lcom/amazon/kindle/network/AndroidWifiLockManager;->access$400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Lock was not released"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
