.class final Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;
.super Ljava/lang/Object;
.source "RequestHistory.java"


# instance fields
.field private final mEntries:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->mEntries:Ljava/util/LinkedList;

    if-ltz p1, :cond_0

    .line 15
    iput p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->mMaxSize:I

    return-void

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Size is negative"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method addEntry(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->mEntries:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->mEntries:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    iget v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->mMaxSize:I

    if-le p1, v0, :cond_0

    .line 25
    iget-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->mEntries:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method getHistoryEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestEntry;",
            ">;"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestHistory;->mEntries:Ljava/util/LinkedList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
