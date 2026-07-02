.class public final Lcom/audible/mobile/sqlite/CursorTemplate;
.super Ljava/lang/Object;
.source "CursorTemplate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private queryForCollection(Landroid/database/Cursor;Lcom/audible/mobile/sqlite/RowMapper;Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/audible/mobile/sqlite/RowMapper<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;)V"
        }
    .end annotation

    .line 57
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 60
    :cond_0
    invoke-interface {p2, p1, v0}, Lcom/audible/mobile/sqlite/RowMapper;->mapRow(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    .line 62
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 65
    :cond_1
    invoke-virtual {p0, p1}, Lcom/audible/mobile/sqlite/CursorTemplate;->closeQuietly(Landroid/database/Cursor;)V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p0, p1}, Lcom/audible/mobile/sqlite/CursorTemplate;->closeQuietly(Landroid/database/Cursor;)V

    .line 66
    throw p2
.end method


# virtual methods
.method public closeQuietly(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public queryForList(Landroid/database/Cursor;Lcom/audible/mobile/sqlite/RowMapper;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/audible/mobile/sqlite/RowMapper<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/sqlite/CursorTemplate;->queryForCollection(Landroid/database/Cursor;Lcom/audible/mobile/sqlite/RowMapper;Ljava/util/Collection;)V

    return-object v0
.end method
