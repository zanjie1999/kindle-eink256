.class public final Lcom/amazon/kcp/home/models/ShovelerDisplayItem;
.super Lcom/amazon/kcp/library/BaseLibraryDisplayItem;
.source "ShovelerDisplayItem.kt"

# interfaces
.implements Lcom/amazon/kindle/model/content/IListableBook;


# instance fields
.field private final bookID:Lcom/amazon/kindle/model/content/IBookID;

.field private final zone:Lcom/amazon/kindle/home/model/ImageZone;

.field private final zoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/home/model/ImageZone;)V
    .locals 1

    const-string/jumbo v0, "zoneName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "zone"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/library/BaseLibraryDisplayItem;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zoneName:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

    .line 20
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/library/HomeUtils;->bookIdForAsin(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;

    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zoneName:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zoneName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

    iget-object p1, p1, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

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

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->bookID:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 28
    invoke-virtual {p0}, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getBookID().serializedForm"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getState()Lcom/amazon/kindle/model/content/ContentState;
    .locals 1

    .line 40
    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/ImageZone;->getImageTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public final getZone()Lcom/amazon/kindle/home/model/ImageZone;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

    return-object v0
.end method

.method public final getZoneName()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zoneName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zoneName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShovelerDisplayItem(zoneName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zoneName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/home/models/ShovelerDisplayItem;->zone:Lcom/amazon/kindle/home/model/ImageZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
