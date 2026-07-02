.class Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;
.super Ljava/lang/Object;
.source "FlashcardsWhispersyncController.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->getCardsDataStore()Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/device/sync/SyncableDataStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/device/sync/SyncableDataStore;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$000(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 142
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$400(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$000(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    iget-object v2, p0, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;->this$0:Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;

    invoke-static {v2}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$000(Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;)Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    .line 147
    :catch_0
    :try_start_2
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$300()Ljava/lang/String;

    .line 149
    :goto_1
    monitor-exit v0

    goto :goto_0

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    .line 151
    :cond_1
    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getSdkRef()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kedu/flashcards/FlashcardsPlugin;->getCurrentUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LearningCards"

    invoke-static {v0, v2, v3}, Lcom/amazon/device/sync/SyncableDataStore;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    .line 153
    invoke-static {}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed initializing sync init"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/whispersync/FlashcardsWhispersyncController$3;->call()Lcom/amazon/device/sync/SyncableDataStore;

    move-result-object v0

    return-object v0
.end method
