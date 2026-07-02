.class Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 61
    const-class v0, Lcom/amazon/device/sync/SyncInit;

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$000(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v1

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v3}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$000(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->lookupExtensionObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/sync/SyncInit;

    invoke-static {v2, v3}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$102(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/device/sync/SyncInit;)Lcom/amazon/device/sync/SyncInit;

    .line 67
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$100(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/device/sync/SyncInit;

    move-result-object v2

    if-nez v2, :cond_0

    .line 69
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    new-instance v3, Lcom/amazon/device/sync/SyncInit;

    invoke-direct {v3}, Lcom/amazon/device/sync/SyncInit;-><init>()V

    invoke-static {v2, v3}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$102(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Lcom/amazon/device/sync/SyncInit;)Lcom/amazon/device/sync/SyncInit;

    .line 70
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$000(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v3}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$100(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/device/sync/SyncInit;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->registerExtensionObject(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$200(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$100(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/device/sync/SyncInit;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    invoke-virtual {v2, v0}, Lcom/amazon/device/sync/SyncInit;->onCreate(Landroid/app/Application;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 78
    :try_start_2
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SyncInit already initialized by some other component(e.g. KAR:ReadDataSyncManager) ! "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$402(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;Z)Z

    .line 81
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$1;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$000(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 82
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
