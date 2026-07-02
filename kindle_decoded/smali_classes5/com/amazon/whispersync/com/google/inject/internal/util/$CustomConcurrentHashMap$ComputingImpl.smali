.class Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;
.super Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;
.source "CustomConcurrentHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ComputingImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl<",
        "TK;TV;TE;>;"
    }
.end annotation


# static fields
.field static final serialVersionUID:J


# instance fields
.field final computer:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TK;+TV;>;"
        }
    .end annotation
.end field

.field final computingStrategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy<",
            "TK;TV;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy<",
            "TK;TV;TE;>;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TK;+TV;>;)V"
        }
    .end annotation

    .line 1986
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Builder;)V

    .line 1987
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;

    .line 1988
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    if-eqz p1, :cond_8

    .line 2008
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 2009
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl;->segmentFor(I)Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;

    move-result-object v1

    .line 2011
    :cond_0
    :goto_0
    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_4

    .line 2014
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 2017
    :try_start_0
    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->getEntry(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 2021
    iget v2, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I

    add-int/lit8 v5, v2, 0x1

    .line 2022
    iget v6, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->threshold:I

    if-le v2, v6, :cond_1

    .line 2023
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->expand()V

    .line 2025
    :cond_1
    iget-object v2, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 2026
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v6

    sub-int/2addr v6, v4

    and-int/2addr v6, v0

    .line 2027
    invoke-virtual {v2, v6}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 2028
    iget v8, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    add-int/2addr v8, v4

    iput v8, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->modCount:I

    .line 2029
    iget-object v8, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v8, p1, v0, v7}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;->newEntry(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 2030
    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 2031
    iput v5, v1, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v7

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    .line 2034
    :goto_1
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    if-eqz v5, :cond_4

    .line 2041
    :try_start_1
    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;->computer:Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;

    invoke-interface {v3, p1, v2, v4}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;->compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 2043
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v3, "compute() returned null unexpectedly"

    invoke-direct {p1, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    .line 2050
    invoke-virtual {v1, v2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z

    throw p1

    :catchall_1
    move-exception p1

    .line 2034
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    .line 2061
    :cond_4
    :goto_2
    :try_start_2
    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingImpl;->computingStrategy:Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;

    invoke-interface {v5, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;->waitForValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_5

    .line 2064
    invoke-virtual {v1, v2, v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Impl$Segment;->removeEntry(Ljava/lang/Object;I)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_0

    .line 2074
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_6
    return-object v5

    :catchall_2
    move-exception p1

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    throw p1

    :catch_0
    const/4 v3, 0x1

    goto :goto_2

    .line 2005
    :cond_8
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
