.class public final Lcom/amazon/kcp/integrator/Batch;
.super Ljava/lang/Object;
.source "Batch.kt"


# instance fields
.field private final accountTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private audibleCompanion:Z

.field private carousel:Z

.field private final categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final grouping:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ownership:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final readingProgress:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private sampleBooks:Z

.field private final sortType:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->categories:Ljava/util/Set;

    .line 6
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->readingProgress:Ljava/util/Set;

    .line 7
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->ownership:Ljava/util/Set;

    .line 8
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->sortType:Ljava/util/Set;

    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->accountTypes:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->grouping:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final accountTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->accountTypes:Ljava/util/Set;

    return-object v0
.end method

.method public final addAccountType(I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->accountTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addCategory(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->categories:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addGrouping(I)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->grouping:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addOwnership(I)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->ownership:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addReadingProgress(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->readingProgress:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addSortType(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->sortType:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final categories()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->categories:Ljava/util/Set;

    return-object v0
.end method

.method public final containsAccountType(I)Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->accountTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsAudibleCompanions()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->audibleCompanion:Z

    return v0
.end method

.method public final containsCarousel()Z
    .locals 1

    .line 103
    iget-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->carousel:Z

    return v0
.end method

.method public final containsCategory(I)Z
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->categories:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsGrouping(I)Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->grouping:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsOwnership(I)Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->ownership:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsReadingProgress(I)Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->readingProgress:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final containsSampleBooks()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->sampleBooks:Z

    return v0
.end method

.method public final containsSortType(I)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->sortType:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final ownership()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->ownership:Ljava/util/Set;

    return-object v0
.end method

.method public final readingProgress()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->readingProgress:Ljava/util/Set;

    return-object v0
.end method

.method public final setNeedsAudibleCompanions()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    iput-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->audibleCompanion:Z

    return-void
.end method

.method public final setNeedsCarousel()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    iput-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->carousel:Z

    return-void
.end method

.method public final setNeedsSampleBooks()V
    .locals 1

    const/4 v0, 0x1

    .line 88
    iput-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->sampleBooks:Z

    return-void
.end method

.method public final sortTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->sortType:Ljava/util/Set;

    return-object v0
.end method

.method public final unionBatch(Lcom/amazon/kcp/integrator/Batch;)V
    .locals 3

    const-string/jumbo v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->categories:Ljava/util/Set;

    iget-object v1, p1, Lcom/amazon/kcp/integrator/Batch;->categories:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->readingProgress:Ljava/util/Set;

    iget-object v1, p1, Lcom/amazon/kcp/integrator/Batch;->readingProgress:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->ownership:Ljava/util/Set;

    iget-object v1, p1, Lcom/amazon/kcp/integrator/Batch;->ownership:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->sortType:Ljava/util/Set;

    iget-object v1, p1, Lcom/amazon/kcp/integrator/Batch;->sortType:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 114
    iget-object v0, p0, Lcom/amazon/kcp/integrator/Batch;->grouping:Ljava/util/Set;

    iget-object v1, p1, Lcom/amazon/kcp/integrator/Batch;->grouping:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->sampleBooks:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/amazon/kcp/integrator/Batch;->sampleBooks:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->sampleBooks:Z

    .line 116
    iget-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->audibleCompanion:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/amazon/kcp/integrator/Batch;->audibleCompanion:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->audibleCompanion:Z

    .line 117
    iget-boolean v0, p0, Lcom/amazon/kcp/integrator/Batch;->carousel:Z

    if-nez v0, :cond_4

    iget-boolean p1, p1, Lcom/amazon/kcp/integrator/Batch;->carousel:Z

    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iput-boolean v1, p0, Lcom/amazon/kcp/integrator/Batch;->carousel:Z

    return-void
.end method
