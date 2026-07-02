.class public Lcom/amazon/kindle/collections/dto/CollectionItemDTO;
.super Ljava/lang/Object;
.source "CollectionItemDTO.java"

# interfaces
.implements Lcom/amazon/kindle/collections/dto/ICollectionItem;


# instance fields
.field private collectionId:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private sortOrder:Ljava/lang/Double;

.field private syncId:Ljava/lang/String;

.field private final thumbnailSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 19
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->sortOrder:Ljava/lang/Double;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->thumbnailSizeMap:Ljava/util/Map;

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->id:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->syncId:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->collectionId:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->sortOrder:Ljava/lang/Double;

    return-void
.end method

.method public static valueOf(Lcom/amazon/kindle/collections/dto/ICollectionItem;)Lcom/amazon/kindle/collections/dto/CollectionItemDTO;
    .locals 1

    .line 72
    instance-of v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    if-eqz v0, :cond_0

    .line 73
    check-cast p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 125
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    if-nez v2, :cond_2

    return v0

    .line 129
    :cond_2
    check-cast p1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;

    .line 130
    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->syncId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->syncId:Ljava/lang/String;

    .line 131
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->collectionId:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->collectionId:Ljava/lang/String;

    .line 132
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->sortOrder:Ljava/lang/Double;

    .line 133
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    iget-object p1, p1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->sortOrder:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->getType()Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 38
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 40
    :cond_0
    sget-object v1, Lcom/amazon/kindle/collections/dto/CollectionItemDTO$1;->$SwitchMap$com$amazon$kindle$collections$dto$ICollectionItem$CollectionItemType:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 49
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 46
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_AUDIBLE_AUDIOBOOK:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 44
    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    return-object v0

    .line 42
    :cond_3
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getCollectionId()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->collectionId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/Double;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->sortOrder:Ljava/lang/Double;

    return-object v0
.end method

.method public getSyncId()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->syncId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->type:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v2, 0x24d

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->syncId:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 145
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->collectionId:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->sortOrder:Ljava/lang/Double;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Double;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    return v2
.end method

.method public setSortOrder(Ljava/lang/Double;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->sortOrder:Ljava/lang/Double;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectionItemDTO{, id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", syncId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->syncId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", collectionId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->collectionId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", sortOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->sortOrder:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->type:Lcom/amazon/kindle/collections/dto/ICollectionItem$CollectionItemType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailSizeMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/collections/dto/CollectionItemDTO;->thumbnailSizeMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
