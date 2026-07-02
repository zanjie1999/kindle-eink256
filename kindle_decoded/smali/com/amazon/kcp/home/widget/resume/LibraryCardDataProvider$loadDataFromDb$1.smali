.class final Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;
.super Ljava/lang/Object;
.source "LibraryCardDataProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->loadDataFromDb(Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $callback:Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;

.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->$callback:Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 88
    invoke-static {}, Lcom/amazon/kcp/library/LibraryCursorFactory;->resetCachedResult()V

    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->access$getLibraryService$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    .line 94
    sget-object v3, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    .line 95
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->access$getFilter$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)Lcom/amazon/kcp/library/LibraryContentFilter;

    move-result-object v4

    .line 96
    sget-object v5, Lcom/amazon/kcp/library/LibrarySortType;->SORT_TYPE_RECENT:Lcom/amazon/kcp/library/LibrarySortType;

    .line 97
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->access$getMaxSize$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)I

    move-result v6

    const-string v7, "All"

    const/4 v8, 0x0

    .line 92
    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/library/LibraryCursorFactory;->loadLibraryItemsForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;ILjava/lang/String;Lcom/amazon/kcp/library/ILibraryItemQuery;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 101
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    iget-object v3, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-static {v3}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->access$getCurrentBooks$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v3

    const-string/jumbo v4, "newBooks"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3, v1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->access$booksNotEqual(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/util/List;)Z

    move-result v0

    .line 102
    iget-object v2, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->access$setCurrentBooks$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    :try_end_0
    .catch Lcom/amazon/kindle/util/ConcurrentDataModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "com.amazon.kcp.home.widget.resume.LibraryCardDataProvider"

    const-string v2, "failed to fetch resume books from DB"

    .line 105
    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->setInitialized(Z)V

    .line 109
    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$loadDataFromDb$1;->$callback:Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;->onLibraryLoad(Z)V

    :cond_1
    return-void
.end method
