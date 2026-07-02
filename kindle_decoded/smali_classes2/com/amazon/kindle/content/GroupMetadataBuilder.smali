.class public Lcom/amazon/kindle/content/GroupMetadataBuilder;
.super Ljava/lang/Object;
.source "GroupMetadataBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;
    }
.end annotation


# instance fields
.field private detailPageAsin:Ljava/lang/String;

.field private groupCollectionTypes:Ljava/lang/String;

.field private groupId:Ljava/lang/String;

.field private groupImage:Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/content/GroupItemMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final seriesAuthors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private seriesOrderType:Ljava/lang/String;

.field private seriesType:Ljava/lang/String;

.field private seriesTypeV2:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private titlePronunciation:Ljava/lang/String;

.field private totalSize:I

.field private type:Lcom/amazon/kcp/library/models/BookType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->type:Lcom/amazon/kcp/library/models/BookType;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->items:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesAuthors:Ljava/util/List;

    return-void
.end method

.method private getAuthorPronunciations()Ljava/lang/String;
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesAuthors:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 227
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesAuthors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;

    .line 229
    invoke-virtual {v2}, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;->getPronunciation()Ljava/lang/String;

    move-result-object v2

    .line 230
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 231
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, ";"

    .line 234
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method private getAuthors()Ljava/lang/String;
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesAuthors:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesAuthors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;

    .line 210
    invoke-virtual {v2}, Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v2

    .line 211
    invoke-static {v2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 212
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, ";"

    .line 215
    invoke-static {v1}, Lcom/google/common/base/Joiner;->on(Ljava/lang/String;)Lcom/google/common/base/Joiner;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/common/base/Joiner;->join(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    :goto_1
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public addAuthorItem(Lcom/amazon/kindle/model/sync/Metadata$AuthorMetadata;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesAuthors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGroupItem(Lcom/amazon/kindle/content/GroupItemMetadata;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Lcom/amazon/kindle/content/GroupMetadata;
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->title:Ljava/lang/String;

    if-eqz v0, :cond_8

    .line 72
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupId:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->type:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 73
    new-instance v1, Lcom/amazon/kindle/content/GroupMetadata;

    iget-object v2, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->title:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->type:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v1, v0, v2, v3}, Lcom/amazon/kindle/content/GroupMetadata;-><init>(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->items:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->addGroupContent(Ljava/util/Collection;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesTypeV2:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setSeriesType(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesType:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setSeriesType(Ljava/lang/String;)V

    .line 81
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->detailPageAsin:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 82
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setAsin(Ljava/lang/String;)V

    .line 84
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->titlePronunciation:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 85
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setTitlePronunciation(Ljava/lang/String;)V

    .line 87
    :cond_3
    iget v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->totalSize:I

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setTotalSize(I)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupImage:Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;

    if-eqz v0, :cond_4

    .line 89
    invoke-static {v0}, Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;->access$000(Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupImage:Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;

    invoke-static {v2}, Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;->access$100(Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kindle/content/GroupMetadata;->setImageData(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupCollectionTypes:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/SeriesGroupType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setGroupType(Lcom/amazon/kcp/library/models/SeriesGroupType;)V

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesOrderType:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 93
    invoke-static {v0}, Lcom/amazon/kcp/library/models/SeriesOrderType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V

    .line 95
    :cond_5
    invoke-direct {p0}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->getAuthors()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 97
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setAuthor(Ljava/lang/String;)V

    .line 99
    :cond_6
    invoke-direct {p0}, Lcom/amazon/kindle/content/GroupMetadataBuilder;->getAuthorPronunciations()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/content/GroupMetadata;->setAuthorPronunciations(Ljava/lang/String;)V

    :cond_7
    return-object v1

    .line 70
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GroupId, Group type, and Title must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 2

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupId:Ljava/lang/String;

    .line 109
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->title:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->titlePronunciation:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesType:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesTypeV2:Ljava/lang/String;

    .line 113
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->detailPageAsin:Ljava/lang/String;

    .line 114
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupImage:Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;

    .line 115
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupCollectionTypes:Ljava/lang/String;

    const/4 v1, 0x0

    .line 116
    iput v1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->totalSize:I

    .line 117
    iget-object v1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 118
    iput-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesOrderType:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesAuthors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-object p0
.end method

.method public isValid()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupId:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDetailPageAsin(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 1

    .line 159
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->detailPageAsin:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupCollectionTypes(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupCollectionTypes:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupId(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupId:Ljava/lang/String;

    return-object p0
.end method

.method public setGroupImage(Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;)V
    .locals 0

    .line 242
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->groupImage:Lcom/amazon/kindle/content/GroupMetadataBuilder$GroupImage;

    return-void
.end method

.method public setSeriesOrderType(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesOrderType:Ljava/lang/String;

    return-object p0
.end method

.method public setSeriesType(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 1

    .line 143
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesType:Ljava/lang/String;

    return-object p0
.end method

.method public setSeriesTypeV2(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 1

    .line 149
    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->seriesTypeV2:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 151
    sget-object v0, Lcom/amazon/kcp/library/models/BookType;->BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 152
    sget-object p1, Lcom/amazon/kcp/library/models/BookType;->BT_NARRATIVE_GROUP:Lcom/amazon/kcp/library/models/BookType;

    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->type:Lcom/amazon/kcp/library/models/BookType;

    :cond_1
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setTitlePronunciation(Ljava/lang/String;)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->titlePronunciation:Ljava/lang/String;

    return-object p0
.end method

.method public setTotalSize(I)Lcom/amazon/kindle/content/GroupMetadataBuilder;
    .locals 0

    .line 171
    iput p1, p0, Lcom/amazon/kindle/content/GroupMetadataBuilder;->totalSize:I

    return-object p0
.end method
