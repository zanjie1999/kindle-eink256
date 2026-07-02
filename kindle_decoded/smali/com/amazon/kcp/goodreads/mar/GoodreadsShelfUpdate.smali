.class public final Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;
.super Ljava/lang/Object;
.source "GoodreadsMarManager.kt"


# instance fields
.field private final complete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final error:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final goodreadsUpdateId:Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

.field private final requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;)V
    .locals 1

    const-string/jumbo v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goodreadsUpdateId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->goodreadsUpdateId:Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    .line 379
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->complete:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 380
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->error:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public final getComplete()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->complete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final getError()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->error:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final getGoodreadsUpdateId()Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->goodreadsUpdateId:Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->requestId:Ljava/lang/String;

    return-object v0
.end method
