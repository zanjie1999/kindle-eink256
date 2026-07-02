.class Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gq:Landroid/content/Intent;

.field final synthetic gr:Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;->gr:Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;->gq:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;->gq:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->constructBackwardsCompatibleIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    invoke-static {}, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->access$000()Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;->gq:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "Ignoring broadcast with action %s"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 69
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;->gr:Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/identity/auth/device/api/MAPBroadcastReceiver;->backwardsCompatibleOnReceive(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
