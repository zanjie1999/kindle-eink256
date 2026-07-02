.class public final Lcom/amazon/kcp/home/models/StoreBook;
.super Ljava/lang/Object;
.source "StoreBook.kt"

# interfaces
.implements Lcom/amazon/kindle/model/content/IListableBook;


# instance fields
.field private final author:Ljava/lang/String;

.field private final contentType:Lcom/amazon/kindle/krx/content/ContentType;

.field private final id:Lcom/amazon/kindle/model/content/IBookID;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    iput-object p2, p0, Lcom/amazon/kcp/home/models/StoreBook;->title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/home/models/StoreBook;->author:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/home/models/StoreBook;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/home/models/StoreBook;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/models/StoreBook;

    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    iget-object v1, p1, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->title:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/home/models/StoreBook;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->author:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/home/models/StoreBook;->author:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    iget-object p1, p1, Lcom/amazon/kcp/home/models/StoreBook;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

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

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    const-string v1, "id.type"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id.serializedForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getParentAsin()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/StoreBook;->getParentAsin()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public bridge synthetic getPublisher()Ljava/lang/String;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/StoreBook;->getPublisher()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPublisher()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/models/StoreBook;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/models/StoreBook;->author:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/models/StoreBook;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    return v0
.end method

.method public isArchivable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSample()Z
    .locals 2

    .line 38
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    iget-object v1, p0, Lcom/amazon/kcp/home/models/StoreBook;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StoreBook(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/models/StoreBook;->id:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/models/StoreBook;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", author="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/models/StoreBook;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/models/StoreBook;->contentType:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
