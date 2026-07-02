.class public final Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;
.super Ljava/lang/Object;
.source "IGoodreadsMarManager.kt"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final bookId:Ljava/lang/String;

.field private final retrievedShelf:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->asin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->bookId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->retrievedShelf:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->asin:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->asin:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->bookId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->bookId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->retrievedShelf:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->retrievedShelf:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->title:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAsin()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public final getBookId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public final getRetrievedShelf()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->retrievedShelf:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->asin:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->bookId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->retrievedShelf:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->title:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GoodreadsUpdateId(asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bookId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->bookId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", retrievedShelf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->retrievedShelf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
