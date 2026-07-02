.class public Lcom/amazon/nwstd/persistence/LocalPeriodicalState;
.super Lcom/amazon/kindle/model/content/LocalBookState;
.source "LocalPeriodicalState.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final bookAsin:Ljava/lang/String;

.field private final bookGuid:Ljava/lang/String;

.field private bookmarks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;",
            "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;",
            ">;"
        }
    .end annotation
.end field

.field private toAdd:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;",
            ">;"
        }
    .end annotation
.end field

.field private toDelete:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/application/ILocalStorage;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/amazon/kindle/model/content/LocalBookState;-><init>(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kcp/application/ILocalStorage;)V

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kindle/model/content/LocalBookState;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getAsin()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookAsin:Ljava/lang/String;

    .line 62
    iput-object p2, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookGuid:Ljava/lang/String;

    .line 63
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toAdd:Ljava/util/Set;

    .line 64
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toDelete:Ljava/util/Set;

    .line 65
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized addBookmark(IILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookAsin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookGuid:Ljava/lang/String;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->insertBookmarkEntry(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    move-result-object p1

    .line 151
    iget-object p2, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toDelete:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 152
    iget-object p2, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toAdd:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearBookmarkHistory()V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toAdd:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 224
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toDelete:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public declared-synchronized getBookmarkData(II)Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;
    .locals 4

    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    new-instance v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget-object v2, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookAsin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookGuid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBookmarkData()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 108
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;

    .line 110
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 112
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBookmarksToAdd()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toAdd:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBookmarksToDelete()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toDelete:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOpenBookAsin()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookAsin:Ljava/lang/String;

    return-object v0
.end method

.method public getOpenBookGuid()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookGuid:Ljava/lang/String;

    return-object v0
.end method

.method protected declared-synchronized insertBookmarkEntry(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;
    .locals 13

    move-object v1, p0

    move/from16 v0, p3

    move/from16 v8, p4

    monitor-enter p0

    .line 127
    :try_start_0
    new-instance v9, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    move-object v3, p1

    move-object v4, p2

    invoke-direct {v9, p1, p2, v0, v8}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 128
    iget-object v2, v1, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    invoke-interface {v2, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    sget-object v2, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->TAG:Ljava/lang/String;

    const/16 v5, 0x8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overwriting bookmark at page id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", pos "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v7, p5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " / "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ]"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    move-object/from16 v10, p6

    .line 132
    :goto_0
    iget-object v11, v1, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    new-instance v12, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;

    move-object v2, v12

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v2 .. v8}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v11, v9, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-object v9

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isLocationBookmarked(II)Z
    .locals 4

    monitor-enter p0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    new-instance v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget-object v2, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookAsin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookGuid:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p1, p2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isPageBookmarked(I)Z
    .locals 4

    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    .line 85
    iget-object v2, v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookAsin:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookAsin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->bookGuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookGuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;->pageId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    .line 86
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 89
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeBookmark(II)V
    .locals 3

    monitor-enter p0

    .line 163
    :try_start_0
    new-instance v0, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;

    iget-object v1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookAsin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookGuid:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/amazon/nwstd/persistence/bookmarks/DBBookmarkData$Key;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 165
    iget-object p1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->bookmarks:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object p1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toAdd:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 171
    iget-object p1, p0, Lcom/amazon/nwstd/persistence/LocalPeriodicalState;->toDelete:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
