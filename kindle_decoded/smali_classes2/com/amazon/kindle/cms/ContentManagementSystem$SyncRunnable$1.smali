.class Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;
.super Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;
.source "ContentManagementSystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->call()Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;

.field final synthetic val$syncNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;->this$1:Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;

    iput-object p3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;->val$syncNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object p1, p1, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method execute()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/cms/api/CommunicationException;
        }
    .end annotation

    .line 797
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;->this$1:Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;

    iget-boolean v0, v0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->checkSyncNeeded:Z

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;->val$syncNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v1, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsServer:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/cms/api/CMSServer;

    sget-object v2, Lcom/amazon/kindle/cms/IContentManagementSystem;->SOURCE_URI:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/cms/api/CMSServer;->isSyncNeeded(Landroid/net/Uri;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 800
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abt to call cmsSync.. value for syncNeeded.get() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;->val$syncNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 803
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;->val$syncNeeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 804
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;->this$1:Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;

    iget-object v0, v0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem;->cmsSync(Z)V

    :cond_2
    return-void
.end method
