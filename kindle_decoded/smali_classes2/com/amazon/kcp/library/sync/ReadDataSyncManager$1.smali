.class Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;
.super Ljava/lang/Object;
.source "ReadDataSyncManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/ReadDataSyncManager;-><init>(Landroid/app/Application;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/kcp/application/IAuthenticationManager;Lcom/amazon/kindle/annotation/IAnnotationsManager;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kcp/library/IBookTypeFactory;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Lcom/amazon/kcp/integrator/LargeLibraryRepository;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

.field final synthetic val$accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

.field final synthetic val$context:Landroid/app/Application;

.field final synthetic val$extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;Landroid/app/Application;Lcom/amazon/kindle/services/authentication/IAccountProvider;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->val$extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    iput-object p3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->val$context:Landroid/app/Application;

    iput-object p4, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->val$accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 127
    const-class v0, Lcom/amazon/device/sync/SyncInit;

    iget-object v1, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->val$extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    monitor-enter v1

    .line 128
    :try_start_0
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->val$extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->lookupExtensionObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/device/sync/SyncInit;

    if-nez v2, :cond_0

    .line 130
    new-instance v2, Lcom/amazon/device/sync/SyncInit;

    invoke-direct {v2}, Lcom/amazon/device/sync/SyncInit;-><init>()V

    .line 131
    iget-object v3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->val$extensionManager:Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;

    invoke-interface {v3, v0, v2}, Lcom/amazon/kindle/krx/ext/IKRXExtensionManager;->registerExtensionObject(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 133
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    new-instance v1, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    iget-object v3, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->val$context:Landroid/app/Application;

    new-instance v4, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$ReadStateSyncUpdateHandler;

    iget-object v5, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->this$0:Lcom/amazon/kcp/library/sync/ReadDataSyncManager;

    invoke-direct {v4, v5}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$ReadStateSyncUpdateHandler;-><init>(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;)V

    iget-object v5, p0, Lcom/amazon/kcp/library/sync/ReadDataSyncManager$1;->val$accountProvider:Lcom/amazon/kindle/services/authentication/IAccountProvider;

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;-><init>(Landroid/app/Application;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/ISyncUpdateHandler;Lcom/amazon/kindle/services/authentication/IAccountProvider;Lcom/amazon/device/sync/SyncInit;)V

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/sync/ReadDataSyncManager;->access$002(Lcom/amazon/kcp/library/sync/ReadDataSyncManager;Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    return-void

    :catchall_0
    move-exception v0

    .line 133
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
