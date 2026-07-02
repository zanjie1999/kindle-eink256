.class Lcom/audible/hushpuppy/controller/ChapterController$1;
.super Landroid/os/AsyncTask;
.source "ChapterController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/ChapterController;->loadTOCEntries()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/ChapterController;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/ChapterController;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController$1;->this$0:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 278
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/controller/ChapterController$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5

    .line 280
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController$1;->this$0:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-static {p1}, Lcom/audible/hushpuppy/controller/ChapterController;->access$000(Lcom/audible/hushpuppy/controller/ChapterController;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 281
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController$1;->this$0:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-static {p1}, Lcom/audible/hushpuppy/controller/ChapterController;->access$100(Lcom/audible/hushpuppy/controller/ChapterController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 284
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController$1;->this$0:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-static {p1}, Lcom/audible/hushpuppy/controller/ChapterController;->access$200(Lcom/audible/hushpuppy/controller/ChapterController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 286
    invoke-static {}, Lcom/audible/hushpuppy/controller/ChapterController;->access$300()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Book Navigator is NULL, cannot load TOC entries"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 291
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getTOC()Lcom/amazon/kindle/krx/reader/ITableOfContents;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    .line 298
    invoke-static {}, Lcom/audible/hushpuppy/controller/ChapterController;->access$300()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "TOC returned from Reader SDK is NULL... Cannot Cache TOC..."

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1

    .line 302
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/ITableOfContents;->getTopLevelTOCItems()Ljava/util/List;

    move-result-object v2

    .line 303
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;

    .line 304
    iget-object v4, p0, Lcom/audible/hushpuppy/controller/ChapterController$1;->this$0:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-static {v4, v3, p1, v0}, Lcom/audible/hushpuppy/controller/ChapterController;->access$400(Lcom/audible/hushpuppy/controller/ChapterController;Lcom/amazon/kindle/krx/reader/ITableOfContentsEntry;Lcom/amazon/kindle/krx/reader/ITableOfContents;I)V

    goto :goto_0

    .line 306
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/controller/ChapterController$1;->this$0:Lcom/audible/hushpuppy/controller/ChapterController;

    invoke-static {p1}, Lcom/audible/hushpuppy/controller/ChapterController;->access$100(Lcom/audible/hushpuppy/controller/ChapterController;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 307
    invoke-static {}, Lcom/audible/hushpuppy/controller/ChapterController;->access$300()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "TOC returned from Reader SDK is NOT NULL...Cache complete..."

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v1

    .line 293
    :catch_0
    invoke-static {}, Lcom/audible/hushpuppy/controller/ChapterController;->access$300()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object p1

    const-string v0, "Failed to load TOC, got IllegalArgumentException"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v1
.end method
