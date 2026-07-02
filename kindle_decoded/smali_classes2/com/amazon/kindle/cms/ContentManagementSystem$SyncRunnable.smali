.class Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;
.super Ljava/lang/Object;
.source "ContentManagementSystem.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ContentManagementSystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SyncRunnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x19


# instance fields
.field checkSyncNeeded:Z

.field events:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;"
        }
    .end annotation
.end field

.field private taskDescription:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/cms/ContentManagementSystem;Ljava/lang/String;Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/cms/CMSEvent;",
            ">;Z)V"
        }
    .end annotation

    .line 784
    iput-object p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 782
    iput-boolean p1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->checkSyncNeeded:Z

    .line 785
    iput-object p2, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->taskDescription:Ljava/lang/String;

    .line 786
    iput-object p3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->events:Ljava/util/Collection;

    .line 787
    iput-boolean p4, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->checkSyncNeeded:Z

    return-void
.end method

.method private addToCms(ZLjava/lang/String;)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 865
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v3, v3, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    new-instance v4, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$3;

    invoke-direct {v4, p0, v1}, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$3;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;I)V

    invoke-interface {v3, p2, v4}, Lcom/amazon/kindle/content/ILibraryService;->listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;

    move-result-object v3

    add-int/lit8 v1, v1, 0x19

    .line 889
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    .line 893
    :cond_0
    iget-object v4, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, p1, v5, v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->bulkAddOrUpdate(Ljava/util/Collection;ZLjava/util/Collection;Z)V

    .line 894
    invoke-interface {v3}, Ljava/util/Collection;->size()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 777
    invoke-virtual {p0}, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 7

    .line 791
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 793
    new-instance v2, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;

    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->taskDescription:Ljava/lang/String;

    invoke-direct {v2, p0, v3, v0}, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$1;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 808
    invoke-virtual {v2}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->run()V

    .line 811
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "ContentManagementSystem"

    if-nez v0, :cond_0

    const-string v0, "CMS Sync is not needed. Skip sync request."

    .line 812
    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->events:Ljava/util/Collection;

    invoke-interface {v0, v1, v3}, Lcom/amazon/kindle/cms/ICMSEventDAO;->updateEvents(Ljava/util/Collection;Z)V

    return-object v2

    :cond_0
    const-string v0, "CMS Sync: flushing db to cms"

    .line 817
    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 820
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    iget-object v0, v0, Lcom/amazon/kindle/cms/ContentManagementSystem;->libraryService:Lcom/amazon/kindle/content/ILibraryService;

    .line 821
    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserIds()Ljava/util/Collection;

    move-result-object v0

    .line 820
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 827
    invoke-direct {p0, v3, v6}, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->addToCms(ZLjava/lang/String;)I

    move-result v6

    add-int/2addr v5, v6

    goto :goto_0

    .line 837
    :cond_1
    new-instance v0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$2;

    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->taskDescription:Ljava/lang/String;

    invoke-direct {v0, p0, v3}, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable$2;-><init>(Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem$CmsCommunicationRetryRunnable;->run()V

    .line 847
    iget-object v0, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->this$0:Lcom/amazon/kindle/cms/ContentManagementSystem;

    invoke-virtual {v0}, Lcom/amazon/kindle/cms/ContentManagementSystem;->getEventDAO()Lcom/amazon/kindle/cms/ICMSEventDAO;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/cms/ContentManagementSystem$SyncRunnable;->events:Ljava/util/Collection;

    invoke-interface {v0, v3, v1}, Lcom/amazon/kindle/cms/ICMSEventDAO;->updateEvents(Ljava/util/Collection;Z)V

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CMS Sync finished: items submitted to worker thread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
