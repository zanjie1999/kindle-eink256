.class public Lcom/amazon/kindle/collections/dto/CollectionDTO;
.super Ljava/lang/Object;
.source "CollectionDTO.java"

# interfaces
.implements Lcom/amazon/kindle/collections/dto/ICollection;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/collections/dto/CollectionDTO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private consumerId:J

.field private enabledInMultiSelect:Z

.field private id:Ljava/lang/String;

.field private importFlag:Ljava/lang/String;

.field private final language:Ljava/lang/String;

.field private sortableTitle:Ljava/lang/String;

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

.field private thumbnailType:Lcom/amazon/kindle/collections/dto/ThumbnailType;

.field private title:Ljava/lang/String;

.field private titlePronunciation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 243
    new-instance v0, Lcom/amazon/kindle/collections/dto/CollectionDTO$1;

    invoke-direct {v0}, Lcom/amazon/kindle/collections/dto/CollectionDTO$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->consumerId:J

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailSizeMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->enabledInMultiSelect:Z

    .line 33
    sget-object v1, Lcom/amazon/kindle/collections/dto/ThumbnailType;->ITEM_COVERS:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    iput-object v1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailType:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    .line 258
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readStringArray([Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 259
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

    .line 260
    aget-object p1, v1, v0

    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    const/4 p1, 0x2

    .line 261
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    const/4 p1, 0x3

    .line 262
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    const/4 p1, 0x4

    .line 263
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    const/4 p1, 0x5

    .line 264
    aget-object p1, v1, p1

    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->importFlag:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/kindle/collections/dto/CollectionDTO$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/kindle/collections/dto/CollectionDTO;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->consumerId:J

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailSizeMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->enabledInMultiSelect:Z

    .line 33
    sget-object v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;->ITEM_COVERS:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    iput-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailType:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    .line 56
    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/collections/dto/ThumbnailType;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->consumerId:J

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailSizeMap:Ljava/util/Map;

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->enabledInMultiSelect:Z

    .line 33
    sget-object v0, Lcom/amazon/kindle/collections/dto/ThumbnailType;->ITEM_COVERS:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    iput-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailType:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    .line 74
    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    .line 78
    iput-boolean p5, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->enabledInMultiSelect:Z

    .line 79
    iput-object p6, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailType:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    return-void
.end method

.method public static isUncollected(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "Uncollected"

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static valueOf(Lcom/amazon/kindle/collections/dto/ICollection;)Lcom/amazon/kindle/collections/dto/CollectionDTO;
    .locals 1

    .line 89
    instance-of v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    if-eqz v0, :cond_0

    .line 90
    check-cast p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 188
    :cond_1
    instance-of v2, p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    if-nez v2, :cond_2

    return v0

    .line 192
    :cond_2
    check-cast p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;

    .line 193
    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    .line 194
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    .line 195
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    .line 196
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    .line 197
    invoke-static {v2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->importFlag:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/collections/dto/CollectionDTO;->importFlag:Ljava/lang/String;

    .line 198
    invoke-static {v2, p1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImportFlag()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->importFlag:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getSortableTitle()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbnailType()Lcom/amazon/kindle/collections/dto/ThumbnailType;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailType:Lcom/amazon/kindle/collections/dto/ThumbnailType;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTitlePronunciation()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

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

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 211
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    if-nez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x13

    .line 213
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->importFlag:Ljava/lang/String;

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v2, v1

    return v2
.end method

.method public isEnabledInMultiSelect()Z
    .locals 1

    .line 143
    iget-boolean v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->enabledInMultiSelect:Z

    return v0
.end method

.method public setImportFlag(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->importFlag:Ljava/lang/String;

    return-void
.end method

.method public setSortableTitle(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    return-void
.end method

.method public setTitlePronunciation(Ljava/lang/String;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CollectionDTO{consumerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->consumerId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", sortableTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", titlePronunciation=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", language=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", importFlag=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->importFlag:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", thumbnailSizeMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->thumbnailSizeMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateSortableTitle(Lcom/amazon/kindle/utils/ISortFriendlyFormatter;)V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const/4 p2, 0x6

    new-array p2, p2, [Ljava/lang/String;

    .line 239
    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->id:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->title:Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->sortableTitle:Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->language:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->titlePronunciation:Ljava/lang/String;

    const/4 v1, 0x4

    aput-object v0, p2, v1

    iget-object v0, p0, Lcom/amazon/kindle/collections/dto/CollectionDTO;->importFlag:Ljava/lang/String;

    const/4 v1, 0x5

    aput-object v0, p2, v1

    .line 240
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
