.class Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gq:Landroid/content/Intent;

.field final synthetic oi:Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver$1;->oi:Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver$1;->gq:Landroid/content/Intent;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver$1;->gq:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 33
    invoke-static {}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "Cannot Handle intent with action %s"

    invoke-static {v1, v0, v2}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock$ChangeTimestampsBroadcastReceiver;->d(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 41
    invoke-static {}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 46
    :cond_1
    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->V(Landroid/content/Context;)Lcom/amazon/identity/auth/device/storage/LambortishClock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/LambortishClock;->fq()V

    return-void
.end method
