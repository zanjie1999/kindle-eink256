.class public Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DCP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public X(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;
    .locals 0

    .line 52
    invoke-static {p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->Y(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/Runnable;)V
    .locals 0

    .line 47
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public fs()Ljava/lang/Integer;
    .locals 1

    .line 62
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "LocalDBUpdatedBroadcast_Received"

    .line 24
    invoke-static {v2, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "key_process_id"

    .line 25
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 26
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;->fs()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;->X(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LocalDataStorage;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/storage/LocalDataStorage;->clearCache()V

    .line 33
    new-instance p2, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver$1;

    invoke-direct {p2, p0, p1}, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver$1;-><init>(Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;Lcom/amazon/identity/auth/device/storage/LocalDataStorage;)V

    .line 41
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/storage/LocalDBUpdatedBroadcastReceiver;->b(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "LocalDBUpdatedBroadcastReceiver"

    .line 28
    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method
