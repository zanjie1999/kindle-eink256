.class public Lcom/amazon/kcp/library/PlatformBackedContentCatalog;
.super Ljava/lang/Object;
.source "PlatformBackedContentCatalog.java"

# interfaces
.implements Lcom/amazon/kindle/cms/IContentManagementSystem;


# instance fields
.field private final library:Lcom/amazon/kindle/content/ILibraryService;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->library:Lcom/amazon/kindle/content/ILibraryService;

    .line 35
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->registerHandlers(Lcom/amazon/kindle/content/ILibraryService;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/PlatformBackedContentCatalog;Lcom/amazon/kindle/content/ContentMetadata;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->synchronousAddOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Z)V

    return-void
.end method

.method private registerHandlers(Lcom/amazon/kindle/content/ILibraryService;)V
    .locals 1

    .line 39
    new-instance v0, Lcom/amazon/kcp/library/StandAloneContentAddEventHandler;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/library/StandAloneContentAddEventHandler;-><init>(Lcom/amazon/kindle/cms/IContentManagementSystem;Lcom/amazon/kindle/content/ILibraryService;)V

    .line 40
    new-instance p1, Lcom/amazon/kcp/library/StandAloneContentUpdateEventHandler;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/StandAloneContentUpdateEventHandler;-><init>(Lcom/amazon/kindle/cms/IContentManagementSystem;)V

    return-void
.end method

.method private removePeriodicalFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 13

    .line 153
    sget-object v0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$2;->$SwitchMap$com$amazon$kcp$library$models$BookType:[I

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-array v5, v2, [Ljava/lang/String;

    .line 156
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    aput-object v0, v5, v12

    new-array v7, v1, [Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v12

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v2

    .line 158
    iget-object v3, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->library:Lcom/amazon/kindle/content/ILibraryService;

    sget-object v4, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_USERCONTENT:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "=? AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " IS 1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v3 .. v11}, Lcom/amazon/kindle/content/ILibraryService;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 167
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 168
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 169
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 170
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 172
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 173
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 177
    iget-object v3, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->library:Lcom/amazon/kindle/content/ILibraryService;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4, v1}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    .line 179
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 158
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_4

    .line 179
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v1
.end method

.method private declared-synchronized synchronousAddOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Z)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 49
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->removePeriodicalFromCarousel(Lcom/amazon/kindle/content/ContentMetadata;)V

    .line 50
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 51
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->library:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 54
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized synchronousAddOrUpdateMultipleItems(Ljava/util/Collection;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    .line 83
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->synchronousAddOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addGoodreadsRedirectVerb()V
    .locals 0

    return-void
.end method

.method public addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;ZZ)V
    .locals 0

    .line 60
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p2

    new-instance p4, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;

    invoke-direct {p4, p0, p1, p3}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog$1;-><init>(Lcom/amazon/kcp/library/PlatformBackedContentCatalog;Lcom/amazon/kindle/content/ContentMetadata;Z)V

    invoke-interface {p2, p4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public declared-synchronized addOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;ZZ)V
    .locals 0

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->synchronousAddOrUpdateItem(Lcom/amazon/kindle/content/ContentMetadata;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addOrUpdateMultipleItems(Ljava/util/Collection;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;Z)V"
        }
    .end annotation

    monitor-enter p0

    .line 92
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->synchronousAddOrUpdateMultipleItems(Ljava/util/Collection;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addStoreRedirectVerbsToCms()V
    .locals 0

    return-void
.end method

.method public readDbAndFlushToCms()V
    .locals 0

    return-void
.end method

.method public declared-synchronized removeItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    .line 109
    monitor-exit p0

    return-void
.end method

.method public removeItemFromCarousel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 144
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/amazon/kcp/library/PlatformBackedContentCatalog;->library:Lcom/amazon/kindle/content/ILibraryService;

    invoke-interface {v1, p1, p2, v0}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public declared-synchronized removeMultipleItems(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 117
    monitor-exit p0

    return-void
.end method
