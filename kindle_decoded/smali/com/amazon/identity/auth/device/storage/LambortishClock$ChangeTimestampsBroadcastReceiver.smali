.class public Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/storage/LambortishClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChangeTimestampsBroadcastReceiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static d(Lcom/amazon/identity/auth/device/ed;)Z
    .locals 1

    const-string v0, "dcp_data_storage_factory"

    .line 53
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/gd;

    .line 54
    invoke-interface {p0}, Lcom/amazon/identity/auth/device/gd;->fe()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 24
    invoke-static {}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Broadcast receiver is notified: ChangeTimestampsBroadcastReceiver"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver$1;-><init>(Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void
.end method
