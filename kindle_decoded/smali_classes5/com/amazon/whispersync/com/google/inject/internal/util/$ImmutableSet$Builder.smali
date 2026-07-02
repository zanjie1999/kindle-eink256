.class public Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;
.super Ljava/lang/Object;
.source "ImmutableSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final contents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 569
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "element cannot be null"

    .line 588
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public varargs add([Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "elements cannot be null"

    .line 602
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string v0, "elements cannot contain null"

    .line 604
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkContentsNotNull(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 606
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 619
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 621
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 622
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 624
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "elements contains a null"

    .line 625
    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public addAll(Ljava/util/Iterator;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 640
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "element cannot be null"

    .line 642
    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 653
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet$Builder;->contents:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableSet;

    move-result-object v0

    return-object v0
.end method
