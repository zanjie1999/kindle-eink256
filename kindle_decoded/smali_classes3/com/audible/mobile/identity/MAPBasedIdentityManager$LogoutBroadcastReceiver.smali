.class public Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;
.super Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;
.source "MAPBasedIdentityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/identity/MAPBasedIdentityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "LogoutBroadcastReceiver"
.end annotation


# instance fields
.field private final internalAction:Ljava/lang/String;

.field final synthetic this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;


# direct methods
.method protected constructor <init>(Lcom/audible/mobile/identity/MAPBasedIdentityManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1119
    iput-object p1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;->this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 1120
    invoke-direct {p0, p2, p1}, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 1121
    iput-object p4, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;->internalAction:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1127
    iget-object p2, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;->this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-static {p2}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->access$1300(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Ljava/util/concurrent/Executor;

    move-result-object p2

    new-instance v0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver$1;-><init>(Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;)V

    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1146
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    .line 1147
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;->internalAction:Ljava/lang/String;

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method
