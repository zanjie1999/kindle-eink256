.class Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "MAPBasedIdentityManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;)V
    .locals 0

    .line 1127
    iput-object p1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver$1;->this$1:Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "logout-action-thread-pool"

    .line 1131
    invoke-static {v0}, Lcom/audible/mobile/util/Executors;->newCachedThreadPool(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    .line 1133
    iget-object v1, p0, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver$1;->this$1:Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;

    iget-object v1, v1, Lcom/audible/mobile/identity/MAPBasedIdentityManager$LogoutBroadcastReceiver;->this$0:Lcom/audible/mobile/identity/MAPBasedIdentityManager;

    invoke-static {v1}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->access$1200(Lcom/audible/mobile/identity/MAPBasedIdentityManager;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 1134
    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1137
    :cond_0
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    const-wide/16 v1, 0x1e

    .line 1140
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1142
    :catch_0
    invoke-static {}, Lcom/audible/mobile/identity/MAPBasedIdentityManager;->access$200()Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Interrupted waiting for sign out actions to complete."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
