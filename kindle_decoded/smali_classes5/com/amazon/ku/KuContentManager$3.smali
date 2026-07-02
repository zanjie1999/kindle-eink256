.class Lcom/amazon/ku/KuContentManager$3;
.super Ljava/lang/Object;
.source "KuContentManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/KuContentManager;->deletePsnlForExpiredBooks(Ljava/util/concurrent/ExecutorService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuContentManager;

.field final synthetic val$timestamp:J


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuContentManager;J)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/amazon/ku/KuContentManager$3;->this$0:Lcom/amazon/ku/KuContentManager;

    iput-wide p2, p0, Lcom/amazon/ku/KuContentManager$3;->val$timestamp:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 331
    new-instance v0, Lcom/amazon/ku/metrics/Metric;

    const-string v1, "KuContentManagerOperation"

    invoke-direct {v0, v1}, Lcom/amazon/ku/metrics/Metric;-><init>(Ljava/lang/String;)V

    .line 333
    iget-object v1, p0, Lcom/amazon/ku/KuContentManager$3;->this$0:Lcom/amazon/ku/KuContentManager;

    invoke-static {v1}, Lcom/amazon/ku/KuContentManager;->access$300(Lcom/amazon/ku/KuContentManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getAllContent()Ljava/util/Collection;

    move-result-object v1

    .line 334
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/IBook;

    .line 335
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v4

    sget-object v5, Lcom/amazon/kindle/krx/content/ContentType;->PERSONAL_LETTER:Lcom/amazon/kindle/krx/content/ContentType;

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 339
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PSNL published at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getPublicationDateInMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/amazon/bookwizard/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :cond_1
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getPublicationDateInMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    .line 344
    iget-wide v6, p0, Lcom/amazon/ku/KuContentManager$3;->val$timestamp:J

    sub-long v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0xea60

    cmp-long v10, v6, v8

    if-lez v10, :cond_2

    .line 345
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignored letter; publication date: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; book captured at "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/amazon/ku/KuContentManager$3;->val$timestamp:J

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 349
    :cond_2
    iget-object v6, p0, Lcom/amazon/ku/KuContentManager$3;->this$0:Lcom/amazon/ku/KuContentManager;

    invoke-static {v6}, Lcom/amazon/ku/KuContentManager;->access$300(Lcom/amazon/ku/KuContentManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v6

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/amazon/kindle/krx/library/ILibraryManager;->deleteItemLocally(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 351
    invoke-static {}, Lcom/amazon/ku/KuContentManager;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Deleted letter: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " time diff: "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, p0, Lcom/amazon/ku/KuContentManager$3;->val$timestamp:J

    sub-long v8, v4, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/amazon/bookwizard/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-wide v6, p0, Lcom/amazon/ku/KuContentManager$3;->val$timestamp:J

    sub-long/2addr v4, v6

    long-to-int v3, v4

    const-string v4, "NumKuExpirationPsnl"

    invoke-virtual {v0, v4, v3}, Lcom/amazon/ku/metrics/Metric;->setCount(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 355
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 356
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "KuContentManagerNumberOfDeletedPsnls"

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v3, p0, Lcom/amazon/ku/KuContentManager$3;->this$0:Lcom/amazon/ku/KuContentManager;

    invoke-static {v3}, Lcom/amazon/ku/KuContentManager;->access$400(Lcom/amazon/ku/KuContentManager;)Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v3

    const-string v4, "KuContentManager"

    const-string v5, "KuContentManagerDeletedPsnls"

    invoke-interface {v3, v4, v5, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "DeletedKuPsnlCount"

    .line 359
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ku/metrics/Metric;->setCount(Ljava/lang/String;I)V

    .line 360
    invoke-virtual {v0}, Lcom/amazon/ku/metrics/Metric;->close()V

    return-void
.end method
