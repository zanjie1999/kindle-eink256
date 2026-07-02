.class public Lcom/amazon/kcp/cover/CoverLruCache;
.super Ljava/lang/Object;
.source "CoverLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;
    }
.end annotation


# instance fields
.field private cache:Lcom/amazon/kcp/cover/ICoverCache;

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;",
            ">;"
        }
    .end annotation
.end field

.field private entries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;",
            ">;"
        }
    .end annotation
.end field

.field private maxObj:I

.field private pivotPosition:I


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/cover/ICoverCache;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->pivotPosition:I

    .line 36
    new-instance v0, Lcom/amazon/kcp/cover/CoverLruCache$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/cover/CoverLruCache$1;-><init>(Lcom/amazon/kcp/cover/CoverLruCache;)V

    iput-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->comparator:Ljava/util/Comparator;

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    .line 60
    iput p1, p0, Lcom/amazon/kcp/cover/CoverLruCache;->maxObj:I

    if-lez p1, :cond_0

    .line 65
    iput-object p2, p0, Lcom/amazon/kcp/cover/CoverLruCache;->cache:Lcom/amazon/kcp/cover/ICoverCache;

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid max size: it needs to be a positive number"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/amazon/kcp/cover/CoverLruCache;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->pivotPosition:I

    return p0
.end method

.method private trimCache()Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/CoverLruCache;->size()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/cover/CoverLruCache;->maxObj:I

    const/4 v2, 0x0

    if-gt v0, v1, :cond_0

    return-object v2

    .line 153
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 154
    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverLruCache;->comparator:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 156
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 157
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    .line 158
    invoke-static {v0}, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->access$100(Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/CoverLruCache;->remove(Ljava/lang/String;)Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->cache:Lcom/amazon/kcp/cover/ICoverCache;

    invoke-interface {v0}, Lcom/amazon/kcp/cover/ICoverCache;->unloadAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized getImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    monitor-enter p0

    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->cache:Lcom/amazon/kcp/cover/ICoverCache;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/cover/ICoverCache;->getCover(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 194
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized put(Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;)V
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-static {p1}, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->access$100(Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    .line 98
    iget v1, p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_0

    .line 102
    iget v1, v0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    iput v1, p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    goto :goto_0

    .line 106
    :cond_0
    iget v1, p0, Lcom/amazon/kcp/cover/CoverLruCache;->pivotPosition:I

    iput v1, p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/amazon/kcp/cover/CoverLruCache;->trimCache()Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_2

    .line 115
    monitor-exit p0

    return-void

    .line 118
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->cache:Lcom/amazon/kcp/cover/ICoverCache;

    invoke-static {p1}, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->access$100(Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/cover/ICoverCache;->loadCover(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public put(Ljava/lang/String;I)V
    .locals 1

    .line 128
    new-instance v0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;-><init>(Ljava/lang/String;I)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/CoverLruCache;->put(Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;)V

    return-void
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;
    .locals 2

    monitor-enter p0

    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    .line 186
    iget-object v1, p0, Lcom/amazon/kcp/cover/CoverLruCache;->cache:Lcom/amazon/kcp/cover/ICoverCache;

    invoke-interface {v1, p1}, Lcom/amazon/kcp/cover/ICoverCache;->unloadCover(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPivot(IZ)V
    .locals 1

    monitor-enter p0

    .line 75
    :try_start_0
    iput p1, p0, Lcom/amazon/kcp/cover/CoverLruCache;->pivotPosition:I

    if-eqz p2, :cond_0

    .line 77
    iget-object p1, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    const v0, 0x7fffffff

    .line 78
    iput v0, p2, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 81
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public size()I
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public update(Ljava/lang/String;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->cache:Lcom/amazon/kcp/cover/ICoverCache;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/cover/ICoverCache;->loadCover(Ljava/lang/String;Z)V

    return-void
.end method

.method public updatePosition(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/CoverLruCache;->entries:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;

    if-eqz p1, :cond_1

    .line 210
    iput p2, p1, Lcom/amazon/kcp/cover/CoverLruCache$ImageKey;->position:I

    :cond_1
    return-void
.end method
