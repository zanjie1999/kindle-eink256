.class public Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;
.super Ljava/lang/Object;
.source "NonSerialTopologicallySortedSet.java"

# interfaces
.implements Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final nodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v0}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    .line 206
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    new-instance v2, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    invoke-direct {v2, v0}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nullOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private dfs(Ljava/util/List;Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 615
    invoke-static {p2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 616
    invoke-direct {p0, p1, v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->dfs(Ljava/util/List;Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)V

    goto :goto_0

    .line 618
    :cond_0
    invoke-static {p2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 619
    invoke-static {p2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private getNode(Ljava/lang/Object;)Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node<",
            "TT;>;"
        }
    .end annotation

    .line 654
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 655
    invoke-static {v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private leafDfs(Ljava/util/List;Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node<",
            "TT;>;)V"
        }
    .end annotation

    .line 634
    invoke-static {p2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    invoke-static {p2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 637
    invoke-static {p2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 640
    :cond_0
    invoke-static {p2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 641
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->leafDfs(Ljava/util/List;Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private static nullOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 664
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    .line 438
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    new-instance v1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    invoke-direct {v1, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 445
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 446
    invoke-virtual {p0, v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->add(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v1

    goto :goto_0

    .line 448
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized asList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 578
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 579
    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 580
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 582
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized contains(Ljava/lang/Object;)Z
    .locals 2

    monitor-enter p0

    .line 460
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 461
    invoke-static {v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nullOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    .line 462
    monitor-exit p0

    return p1

    :cond_1
    const/4 p1, 0x0

    .line 465
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 472
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 473
    invoke-virtual {p0, v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->contains(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/2addr v0, v1

    goto :goto_0

    .line 475
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 378
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 384
    :cond_0
    check-cast p1, Ljava/util/Set;

    .line 385
    invoke-virtual {p0, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 392
    :cond_1
    instance-of v0, p1, Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    if-eqz v0, :cond_3

    .line 393
    check-cast p1, Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;

    .line 394
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 395
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->getDependents(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v3

    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lcom/audible/mobile/downloader/interfaces/TopologicallySortedSet;->getDependents(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public declared-synchronized getAllDependencies(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 251
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 253
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 254
    :cond_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 255
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->getNode(Ljava/lang/Object;)Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 257
    invoke-static {p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 258
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v2

    .line 259
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 264
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDependencies(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 270
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 272
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->getNode(Ljava/lang/Object;)Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 274
    invoke-static {p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 275
    invoke-static {v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 278
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDependents(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 237
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-direct {p0, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->getNode(Ljava/lang/Object;)Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 241
    invoke-static {p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$100(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 242
    invoke-static {v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 245
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 593
    :goto_0
    iget-object v3, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 594
    iget-object v3, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_1

    .line 595
    :cond_0
    invoke-virtual {v3}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->hashCode()I

    move-result v3

    :goto_1
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    monitor-enter p0

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->asList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Z
    .locals 5

    monitor-enter p0

    .line 487
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_4

    .line 488
    iget-object v2, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 489
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nullOrEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 491
    iget-object p1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 494
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 495
    invoke-static {v0}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$100(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 499
    :cond_0
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$100(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 500
    invoke-static {v0}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 503
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$300(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 504
    invoke-virtual {v0, v4}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->addDependency(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 508
    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    .line 511
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 518
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 519
    invoke-virtual {p0, v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->remove(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v1

    goto :goto_0

    .line 521
    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 529
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 530
    iget-object v2, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 531
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 532
    invoke-static {v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->remove(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    or-int/2addr v0, v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 535
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray()[Ljava/lang/Object;
    .locals 4

    monitor-enter p0

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 549
    iget-object v3, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    invoke-static {v3}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 551
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">([TU;)[TU;"
        }
    .end annotation

    monitor-enter p0

    .line 558
    :try_start_0
    array-length v0, p1

    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 559
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 563
    :goto_0
    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    invoke-static {v1}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;->access$200(Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 567
    :cond_1
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    .line 568
    aput-object v1, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 572
    :cond_2
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->asList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized topoLeafList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 320
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 322
    invoke-direct {p0, v0, v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->leafDfs(Ljava/util/List;Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 324
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized topoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    monitor-enter p0

    .line 304
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 305
    iget-object v1, p0, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->nodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;

    .line 306
    invoke-direct {p0, v0, v2}, Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet;->dfs(Ljava/util/List;Lcom/audible/mobile/downloader/NonSerialTopologicallySortedSet$Node;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 308
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
