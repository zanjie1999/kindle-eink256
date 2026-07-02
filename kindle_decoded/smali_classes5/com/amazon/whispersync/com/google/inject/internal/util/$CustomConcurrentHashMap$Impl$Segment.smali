.class final Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Segment"
.end annotation


# instance fields
.field volatile count:I

.field modCount:I

.field volatile table:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

.field threshold:I


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;I)V
    .locals 0

    .line 755
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 756
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V

    return-void
.end method


# virtual methods
.method clear()V
    .locals 4

    .line 1195
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v0, :cond_1

    .line 1196
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1198
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1199
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    .line 1200
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1202
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1203
    iput v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1205
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method containsKey(Ljava/lang/Object;I)Z
    .locals 4

    .line 814
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 815
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 816
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_4

    .line 817
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v3

    if-eq v3, p2, :cond_0

    goto :goto_1

    .line 821
    :cond_0
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 826
    :cond_1
    invoke-interface {v0, v3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 828
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2

    .line 816
    :cond_3
    :goto_1
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_4
    return v2
.end method

.method containsValue(Ljava/lang/Object;)Z
    .locals 7

    .line 837
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 838
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 839
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 840
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 842
    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_2

    .line 843
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 851
    :cond_0
    invoke-interface {v0, v6, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 p1, 0x1

    return p1

    .line 842
    :cond_1
    :goto_2
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method expand()V
    .locals 11

    .line 964
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 965
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lt v1, v2, :cond_0

    return-void

    .line 984
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    shl-int/lit8 v3, v1, 0x1

    .line 985
    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v3

    .line 986
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget v5, v5, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->loadFactor:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 987
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_6

    .line 991
    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 994
    invoke-interface {v2, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 995
    invoke-interface {v2, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v8

    and-int/2addr v8, v4

    if-nez v7, :cond_1

    .line 999
    invoke-virtual {v3, v8, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    goto :goto_3

    :cond_1
    move-object v9, v6

    :goto_1
    if-eqz v7, :cond_3

    .line 1007
    invoke-interface {v2, v7}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v10

    and-int/2addr v10, v4

    if-eq v10, v8, :cond_2

    move-object v9, v7

    move v8, v10

    .line 1006
    :cond_2
    invoke-interface {v2, v7}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 1014
    :cond_3
    invoke-virtual {v3, v8, v9}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    :goto_2
    if-eq v6, v9, :cond_5

    .line 1018
    invoke-interface {v2, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 1020
    invoke-interface {v2, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v8

    and-int/2addr v8, v4

    .line 1021
    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 1022
    invoke-interface {v2, v7, v6, v10}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1017
    :cond_4
    invoke-interface {v2, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_5
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1030
    :cond_6
    iput-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method

.method get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 805
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 810
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object p2, p2, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    invoke-interface {p2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getEntry(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TE;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 784
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    if-eqz v1, :cond_3

    .line 785
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 786
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v2

    if-eq v2, p2, :cond_0

    goto :goto_1

    .line 790
    :cond_0
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 795
    :cond_1
    invoke-interface {v0, v2, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 785
    :cond_2
    :goto_1
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method getFirst(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 777
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method newEntryArray(I)Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;"
        }
    .end annotation

    .line 760
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    return-object v0
.end method

.method put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;Z)TV;"
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 917
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 919
    :try_start_0
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v2, v1, 0x1

    .line 920
    iget v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v1, v3, :cond_0

    .line 921
    invoke-virtual {p0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 924
    :cond_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 925
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    .line 927
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    .line 931
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 932
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    invoke-interface {v0, p1, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 938
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p4, :cond_1

    if-eqz p1, :cond_1

    .line 956
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 943
    :cond_1
    :try_start_1
    invoke-interface {v0, v5, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 956
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 930
    :cond_2
    :try_start_2
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_0

    .line 949
    :cond_3
    iget p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 950
    invoke-interface {v0, p1, p2, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 951
    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 952
    invoke-virtual {v1, v3, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 953
    iput v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x0

    .line 956
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method remove(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I)TV;"
        }
    .end annotation

    .line 1034
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 1035
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1037
    :try_start_0
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v1, v1, -0x1

    .line 1038
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1039
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v3, p2

    .line 1040
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    .line 1043
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 1044
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_2

    if-eqz v6, :cond_2

    invoke-interface {v0, v6, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1046
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    invoke-interface {p1, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1050
    iget p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1051
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_1
    if-eq v4, v5, :cond_1

    .line 1053
    invoke-interface {v0, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1055
    invoke-interface {v0, v6, v4, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 1052
    :cond_0
    invoke-interface {v0, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 1060
    :cond_1
    invoke-virtual {v2, v3, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1061
    iput v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1068
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 1042
    :cond_2
    :try_start_1
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1068
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method remove(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 10

    .line 1073
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 1074
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1076
    :try_start_0
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1077
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1078
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    sub-int/2addr v4, v2

    and-int/2addr v4, p2

    .line 1079
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    :goto_0
    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 1082
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1083
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v9

    if-ne v9, p2, :cond_4

    if-eqz v8, :cond_4

    invoke-interface {v0, v8, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1085
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object p1, p1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    invoke-interface {p1, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p3, p1, :cond_1

    if-eqz p3, :cond_0

    if-eqz p1, :cond_0

    .line 1086
    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1112
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v7

    .line 1091
    :cond_1
    :goto_1
    :try_start_1
    iget p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1092
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    if-eq v5, v6, :cond_3

    .line 1094
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1096
    invoke-interface {v0, p2, v5, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1093
    :cond_2
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    .line 1101
    :cond_3
    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1102
    iput v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1112
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 1081
    :cond_4
    :try_start_2
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1112
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v7

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public removeEntry(Ljava/lang/Object;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;I)Z"
        }
    .end annotation

    .line 1159
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 1160
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1162
    :try_start_0
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1163
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1164
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    sub-int/2addr v4, v2

    and-int/2addr v4, p2

    .line 1165
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    :goto_0
    if-eqz v6, :cond_3

    .line 1168
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v7

    if-ne v7, p2, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1172
    iget p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1173
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    if-eq v5, v6, :cond_1

    .line 1175
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1177
    invoke-interface {v0, p2, v5, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1174
    :cond_0
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    .line 1182
    :cond_1
    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1183
    iput v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1190
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 1167
    :cond_2
    :try_start_1
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 1190
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public removeEntry(Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ITV;)Z"
        }
    .end annotation

    .line 1117
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 1118
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1120
    :try_start_0
    iget v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 1121
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 1122
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v4

    sub-int/2addr v4, v2

    and-int/2addr v4, p2

    .line 1123
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    :goto_0
    const/4 v7, 0x0

    if-eqz v6, :cond_5

    .line 1126
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v8

    if-ne v8, p2, :cond_4

    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1127
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p3, :cond_1

    if-eqz p3, :cond_0

    .line 1128
    invoke-interface {v0, p1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_1

    .line 1154
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v7

    .line 1133
    :cond_1
    :goto_1
    :try_start_1
    iget p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 1134
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    if-eq v5, v6, :cond_3

    .line 1136
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 1138
    invoke-interface {v0, p2, v5, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->copyEntry(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1135
    :cond_2
    invoke-interface {v0, v5}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_2

    .line 1143
    :cond_3
    invoke-virtual {v3, v4, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 1144
    iput v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1154
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 1125
    :cond_4
    :try_start_2
    invoke-interface {v0, v6}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1154
    :cond_5
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v7

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;)TV;"
        }
    .end annotation

    .line 890
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 891
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 893
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 894
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 895
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v0, p1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 899
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 911
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    .line 904
    :cond_0
    :try_start_1
    invoke-interface {v0, v1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 911
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object p1

    .line 893
    :cond_1
    :try_start_2
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 911
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ITV;TV;)Z"
        }
    .end annotation

    .line 862
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->strategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;

    .line 863
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 865
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->getFirst(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 866
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 867
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getHash(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, p2, :cond_1

    if-eqz v3, :cond_1

    invoke-interface {v0, p1, v3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalKeys(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 871
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 885
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 876
    :cond_0
    :try_start_1
    invoke-interface {v0, v3, p3}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->equalValues(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 877
    invoke-interface {v0, v1, p4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 885
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return p1

    .line 865
    :cond_1
    :try_start_2
    invoke-interface {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->getNext(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method setTable(Ljava/util/concurrent/atomic/AtomicReferenceArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TE;>;)V"
        }
    .end annotation

    .line 768
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;

    iget v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->loadFactor:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->threshold:I

    .line 769
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    return-void
.end method
