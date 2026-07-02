.class Lcom/amazon/phl/PopularHighlightsManager$1;
.super Ljava/lang/Object;
.source "PopularHighlightsManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/phl/PopularHighlightsManager;->loadFromSidecarStorage(Lcom/amazon/kindle/krx/content/IBook;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/phl/PopularHighlightsManager;

.field final synthetic val$asyncTaskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

.field final synthetic val$book:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->this$0:Lcom/amazon/phl/PopularHighlightsManager;

    iput-object p2, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    iput-object p3, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->val$asyncTaskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/amazon/phl/PopularHighlightsManager$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->this$0:Lcom/amazon/phl/PopularHighlightsManager;

    invoke-static {v0}, Lcom/amazon/phl/PopularHighlightsManager;->access$000(Lcom/amazon/phl/PopularHighlightsManager;)Lcom/amazon/phl/parser/SidecarReader;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Lcom/amazon/phl/parser/SidecarReader;->readSidecar(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/phl/model/Sidecar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 182
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    invoke-static {}, Lcom/amazon/phl/PopularHighlightsManager;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No sidecar for asin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 187
    :cond_1
    invoke-static {}, Lcom/amazon/phl/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 188
    invoke-static {}, Lcom/amazon/phl/PopularHighlightsManager;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sidecar loaded for asin: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v0}, Lcom/amazon/phl/model/Sidecar;->getPopularHighlights()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " popular highlights"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 188
    invoke-static {v2, v3}, Lcom/amazon/phl/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    :cond_2
    iget-object v2, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->this$0:Lcom/amazon/phl/PopularHighlightsManager;

    invoke-static {v2}, Lcom/amazon/phl/PopularHighlightsManager;->access$200(Lcom/amazon/phl/PopularHighlightsManager;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/phl/model/Sidecar;->getPopularHighlights()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->this$0:Lcom/amazon/phl/PopularHighlightsManager;

    iget-object v2, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->val$book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v0, v2}, Lcom/amazon/phl/PopularHighlightsManager;->access$300(Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 193
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsManager$1;->val$asyncTaskExecutor:Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    new-instance v2, Lcom/amazon/phl/PopularHighlightsManager$1$1;

    invoke-direct {v2, p0}, Lcom/amazon/phl/PopularHighlightsManager$1$1;-><init>(Lcom/amazon/phl/PopularHighlightsManager$1;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    :cond_3
    return-object v1
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 205
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->HIGH:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
