.class public Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;
.super Ljava/lang/Object;
.source "ImmutableList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
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
.field private final contents:Ljava/util/ArrayList;
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

    .line 635
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;->contents:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    const-string v0, "element cannot be null"

    .line 645
    invoke-static {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAll(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 658
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 660
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 661
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 663
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

    .line 664
    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;->contents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public build()Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 675
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList$Builder;->contents:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    return-object v0
.end method
