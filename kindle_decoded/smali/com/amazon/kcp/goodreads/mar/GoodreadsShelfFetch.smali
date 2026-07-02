.class public final Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;
.super Ljava/lang/Object;
.source "GoodreadsMarManager.kt"


# instance fields
.field private bookId:Ljava/lang/String;

.field private final complete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final intendedShelf:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;

.field private retrievedShelf:Ljava/lang/String;

.field private final silentUpdate:Z

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "intendedShelf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->intendedShelf:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->requestId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->title:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->silentUpdate:Z

    .line 373
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->complete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 372
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public final getBookId()Ljava/lang/String;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public final getComplete()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 373
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->complete:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public final getIntendedShelf()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->intendedShelf:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetrievedShelf()Ljava/lang/String;
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->retrievedShelf:Ljava/lang/String;

    return-object v0
.end method

.method public final getSilentUpdate()Z
    .locals 1

    .line 372
    iget-boolean v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->silentUpdate:Z

    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final setBookId(Ljava/lang/String;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->bookId:Ljava/lang/String;

    return-void
.end method

.method public final setRetrievedShelf(Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->retrievedShelf:Ljava/lang/String;

    return-void
.end method
