.class abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "HashIterator"
.end annotation


# instance fields
.field currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field lastReturned:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
            "TK;TV;TE;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextEntry:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field nextExternal:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
            "TK;TV;TE;>.WriteThroughEntry;"
        }
    .end annotation
.end field

.field nextSegmentIndex:I

.field nextTableIndex:I

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;)V
    .locals 0

    .line 1616
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1617
    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextSegmentIndex:I

    const/4 p1, -0x1

    .line 1618
    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    .line 1619
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->advance()V

    return-void
.end method


# virtual methods
.method final advance()V
    .locals 3

    const/4 v0, 0x0

    .line 1627
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    .line 1629
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1633
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1637
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextSegmentIndex:I

    if-ltz v0, :cond_2

    .line 1638
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segments:[Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextSegmentIndex:I

    aget-object v0, v1, v0

    .line 1639
    iget v1, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_1

    .line 1640
    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1641
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    .line 1642
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextInTable()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_2
    return-void
.end method

.method advanceTo(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 1686
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 1687
    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1688
    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 1690
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-direct {v0, v2, v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hasMoreElements()Z
    .locals 1

    .line 1623
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1699
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method nextEntry()Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
            "TK;TV;TE;>.WriteThroughEntry;"
        }
    .end annotation

    .line 1703
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextExternal:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    if-eqz v0, :cond_0

    .line 1706
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    .line 1707
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->advance()V

    .line 1708
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    return-object v0

    .line 1704
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method nextInChain()Z
    .locals 2

    .line 1654
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 1655
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1656
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1658
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->advanceTo(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 1657
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method nextInTable()Z
    .locals 3

    .line 1671
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    if-ltz v0, :cond_2

    .line 1672
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->currentTable:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    add-int/lit8 v2, v0, -0x1

    iput v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextTableIndex:I

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextEntry:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1673
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->advanceTo(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->nextInChain()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public remove()V
    .locals 2

    .line 1712
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    if-eqz v0, :cond_0

    .line 1715
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1716
    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$HashIterator;->lastReturned:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$WriteThroughEntry;

    return-void

    .line 1713
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
