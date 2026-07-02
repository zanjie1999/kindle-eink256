.class public Lcom/amazon/kindle/content/GroupMetadata;
.super Ljava/lang/Object;
.source "GroupMetadata.java"

# interfaces
.implements Lcom/amazon/kindle/model/content/IListableBook;


# static fields
.field private static final DEFAULT_SERIES_TYPE:Ljava/lang/String; = "SERIES"


# instance fields
.field private asin:Ljava/lang/String;

.field private asinCount:I

.field private authorPronunciations:Ljava/lang/String;

.field private authors:Ljava/lang/String;

.field private final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private final bookType:Lcom/amazon/kcp/library/models/BookType;

.field private final groupContent:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

.field private imageExtension:Ljava/lang/String;

.field private imageId:Ljava/lang/String;

.field private seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

.field private seriesType:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private titlePronunciation:Ljava/lang/String;

.field private totalSize:I


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesGroupType;->NONE:Lcom/amazon/kcp/library/models/SeriesGroupType;

    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    .line 48
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    .line 56
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 57
    iput-object p2, p0, Lcom/amazon/kindle/content/GroupMetadata;->title:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/amazon/kindle/content/GroupMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    .line 59
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupContent:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addGroupContent(Lcom/amazon/kindle/content/GroupItemMetadata;)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupContent:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addGroupContent(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 92
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/GroupMetadata;->addGroupContent(Lcom/amazon/kindle/content/GroupItemMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAsinCount()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 102
    iget v1, p0, Lcom/amazon/kindle/content/GroupMetadata;->asinCount:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupContent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Lcom/google/common/primitives/Ints;->max([I)I

    move-result v0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->authors:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthorPronunciations()Ljava/lang/String;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->authorPronunciations:Ljava/lang/String;

    return-object v0
.end method

.method public getBookID()Lcom/amazon/kindle/model/content/IBookID;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object v0
.end method

.method public getBookType()Lcom/amazon/kcp/library/models/BookType;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    return-object v0
.end method

.method public getGroupContents()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupContent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getGroupType()Lcom/amazon/kcp/library/models/SeriesGroupType;
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageExtension()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->imageExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getImageId()Ljava/lang/String;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->imageId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentAsin()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicationDate()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicationDateInMillis()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPublisher()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeriesOrderType()Lcom/amazon/kcp/library/models/SeriesOrderType;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    return-object v0
.end method

.method public getSeriesType()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->seriesType:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "SERIES"

    :cond_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitlePronunciation()Ljava/lang/String;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->titlePronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/amazon/kindle/content/GroupMetadata;->totalSize:I

    return v0
.end method

.method public isArchivable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isLocal()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSample()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAsin(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->asin:Ljava/lang/String;

    return-void
.end method

.method public setAsinCount(I)V
    .locals 0

    .line 97
    iput p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->asinCount:I

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->authors:Ljava/lang/String;

    return-void
.end method

.method public setAuthorPronunciations(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->authorPronunciations:Ljava/lang/String;

    return-void
.end method

.method public setGroupType(Lcom/amazon/kcp/library/models/SeriesGroupType;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    return-void
.end method

.method public setImageData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->imageId:Ljava/lang/String;

    .line 248
    iput-object p2, p0, Lcom/amazon/kindle/content/GroupMetadata;->imageExtension:Ljava/lang/String;

    return-void
.end method

.method public setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    return-void
.end method

.method public setSeriesType(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 218
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->seriesType:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 220
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->seriesType:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public setTitlePronunciation(Ljava/lang/String;)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->titlePronunciation:Ljava/lang/String;

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .line 239
    iput p1, p0, Lcom/amazon/kindle/content/GroupMetadata;->totalSize:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GroupContent{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupContent:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 66
    invoke-virtual {v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->getItemId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 68
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GroupMetadata{id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/GroupMetadata;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/content/GroupMetadata;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", asin=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->asin:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", bookType=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->bookType:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", asinCount="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->asinCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", seriesType="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->seriesType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", titlePronunciation="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->titlePronunciation:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", totalSize=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->totalSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", imageId=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->imageId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", imageExtension="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->imageExtension:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", groupType=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupType:Lcom/amazon/kcp/library/models/SeriesGroupType;

    .line 79
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", seriesOrderType=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->seriesOrderType:Lcom/amazon/kcp/library/models/SeriesOrderType;

    .line 80
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", authors=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->authors:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, ", authorPronunciations="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadata;->authorPronunciations:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", groupContentIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateItemMetadata(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)V"
        }
    .end annotation

    .line 280
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupContent:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadata;->groupContent:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/GroupItemMetadata;

    .line 283
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/content/GroupItemMetadata;->setOriginType(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupItemMetadata;->setReadState(Lcom/amazon/kindle/krx/content/IBook$ReadState;)V

    goto :goto_0

    :cond_1
    return-void
.end method
