.class final Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;
.super Ljava/lang/Object;
.source "FalkorLastReadSyncManagerClient.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->update(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic $storyAsin:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    iput-object p2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p3, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->$storyAsin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 75
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    iget-object v2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->getUpdateString(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 78
    new-instance v2, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;

    iget-object v3, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {v3}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->access$getFALKOR_DATASET$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->$storyAsin:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v1}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/SyncRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v2, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {v2}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->access$getWhispersyncClient$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {v3}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->access$getFALKOR_NAMESPACE$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v0, v4}, Lcom/amazon/kindle/whispersyncclient/sync/whispersyncV2/WhispersyncClient;->update(Ljava/lang/String;Ljava/util/List;Z)Z

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {v0}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->access$getTAG$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Falkor LastReadEpisode update sent for book asin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/amazon/kindle/collections/sync/SyncException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 83
    iget-object v1, p0, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient$update$1;->this$0:Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;

    invoke-static {v1}, Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;->access$getTAG$p(Lcom/amazon/kcp/library/sync/FalkorLastReadSyncManagerClient;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Falkor LastReadEpisode sync update failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/sync/SyncException;->getCode()Lcom/amazon/kindle/collections/sync/SyncException$Code;

    move-result-object v0

    const-string v3, "e.code"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/collections/sync/SyncException$Code;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
