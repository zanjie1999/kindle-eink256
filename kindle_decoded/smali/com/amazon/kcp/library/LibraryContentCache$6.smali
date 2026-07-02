.class Lcom/amazon/kcp/library/LibraryContentCache$6;
.super Ljava/lang/Object;
.source "LibraryContentCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentCache;->initializeInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentCache;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentCache$6;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15
    .annotation build Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "JLM_JSR166_UTILCONCURRENT_MONITORENTER"
        }
    .end annotation

    .line 202
    invoke-static {}, Lcom/amazon/kcp/library/LibraryContentCache;->access$100()Ljava/lang/String;

    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentCache$6;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v0}, Lcom/amazon/kcp/library/LibraryContentCache;->access$000(Lcom/amazon/kcp/library/LibraryContentCache;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/library/LibraryGroupType;->NOT_APPLICABLE:Lcom/amazon/kindle/krx/library/LibraryGroupType;

    sget-object v3, Lcom/amazon/kcp/library/LibraryContentFilter;->ALL_ITEMS_FILTER:Lcom/amazon/kcp/library/LibraryContentFilter;

    const/4 v4, 0x0

    sget-object v5, Lcom/amazon/kcp/library/LibraryContentCache;->COLUMNS:[Ljava/lang/String;

    const/4 v6, -0x1

    const-string v7, "All"

    sget-object v8, Lcom/amazon/kindle/content/AllGrouping;->INSTANCE:Lcom/amazon/kindle/content/AllGrouping;

    invoke-static/range {v1 .. v8}, Lcom/amazon/kcp/library/LibraryCursorFactory;->getCursorForSortAndFilter(Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/krx/library/LibraryGroupType;Lcom/amazon/kcp/library/LibraryContentFilter;Lcom/amazon/kcp/library/LibrarySortType;[Ljava/lang/String;ILjava/lang/String;Lcom/amazon/kindle/content/GroupingQueryProvider;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 208
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 211
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 212
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 213
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 214
    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 215
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 217
    invoke-static {v3}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 219
    new-instance v14, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;

    new-instance v10, Ljava/util/Date;

    invoke-direct {v10, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v4}, Lcom/amazon/kcp/library/models/BookType;->valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v11

    invoke-static {v5}, Lcom/amazon/kindle/model/content/ContentState;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v12

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryContentCache$6;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v4}, Lcom/amazon/kcp/library/LibraryContentCache;->access$200(Lcom/amazon/kcp/library/LibraryContentCache;)Lcom/amazon/kcp/library/cache/IContentMetadataLoader;

    move-result-object v13

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/amazon/kcp/library/cache/LazyLoadingContentMetadataDisplayItem;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/util/Date;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kcp/library/cache/IContentMetadataLoader;)V

    .line 220
    invoke-interface {v1, v3, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 226
    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryContentCache$6;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v3}, Lcom/amazon/kcp/library/LibraryContentCache;->access$300(Lcom/amazon/kcp/library/LibraryContentCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 227
    :try_start_2
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryContentCache$6;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v4}, Lcom/amazon/kcp/library/LibraryContentCache;->access$400(Lcom/amazon/kcp/library/LibraryContentCache;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 228
    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryContentCache$6;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v4, v1}, Lcom/amazon/kcp/library/LibraryContentCache;->access$502(Lcom/amazon/kcp/library/LibraryContentCache;Ljava/util/Map;)Ljava/util/Map;

    .line 229
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentCache$6;->this$0:Lcom/amazon/kcp/library/LibraryContentCache;

    invoke-static {v1}, Lcom/amazon/kcp/library/LibraryContentCache;->access$300(Lcom/amazon/kcp/library/LibraryContentCache;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 230
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 231
    :try_start_3
    invoke-static {}, Lcom/amazon/kcp/library/LibraryContentCache;->access$100()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_3

    .line 232
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 230
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v1

    .line 203
    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v2

    if-eqz v0, :cond_2

    .line 232
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :catchall_4
    move-exception v0

    .line 233
    invoke-static {}, Lcom/amazon/kcp/library/LibraryContentCache;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "error initializing LibraryContentCache: "

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-void
.end method
