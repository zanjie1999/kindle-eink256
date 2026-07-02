.class public Lcom/amazon/kcp/application/SnapshotController;
.super Ljava/lang/Object;
.source "SnapshotController.java"

# interfaces
.implements Lcom/amazon/kcp/application/ISnapshotController;


# instance fields
.field private librarySnapshotDelegates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/ILibrarySnapshotList;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/application/SnapshotController;->librarySnapshotDelegates:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getContentSnapshot()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/amazon/kcp/application/SnapshotController;->librarySnapshotDelegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/models/ILibrarySnapshotList;

    .line 44
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILibrarySnapshotList;->getContentSnapshot()Ljava/util/Collection;

    move-result-object v2

    .line 45
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getWatermarkSnapshotList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/models/WatermarkSnapshot;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v1, p0, Lcom/amazon/kcp/application/SnapshotController;->librarySnapshotDelegates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/models/ILibrarySnapshotList;

    .line 29
    invoke-interface {v2}, Lcom/amazon/kcp/library/models/ILibrarySnapshotList;->getWatermarkSnapshotList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 30
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public registerSnapshotLibraryDelegate(Lcom/amazon/kcp/library/models/ILibrarySnapshotList;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/application/SnapshotController;->librarySnapshotDelegates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
