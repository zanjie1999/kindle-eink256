.class public Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;
.super Ljava/lang/Object;
.source "ReferenceCounter.java"


# instance fields
.field mCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public decrement()I
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    return v0
.end method

.method public get()I
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public increment()I
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ReferenceCounter;->mCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method
