.class public Lcom/audible/mobile/network/apis/domain/ProductImpl;
.super Ljava/lang/Object;
.source "ProductImpl.java"

# interfaces
.implements Lcom/audible/mobile/network/apis/domain/Product;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/network/apis/domain/ProductImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final ISO8601_DATETIME_TIME_ZONE_PATTERN:Ljava/lang/String; = "yyyy-MM-dd"


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final audibleEditorsSummary:Ljava/lang/String;

.field private final authors:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/audible/mobile/domain/Person;",
            ">;"
        }
    .end annotation
.end field

.field private final bookTitle:Lcom/audible/mobile/domain/BookTitle;

.field private final contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

.field private final contentType:Lcom/audible/mobile/domain/ContentType;

.field private final copyright:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final editorialReviews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final formatType:Lcom/audible/mobile/domain/FormatType;

.field private final formats:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/audible/mobile/domain/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final images:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/audible/mobile/audio/metadata/CoverArtType;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private final isAdultProduct:Z

.field private final language:Ljava/lang/String;

.field private final narrators:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Lcom/audible/mobile/domain/Person;",
            ">;"
        }
    .end annotation
.end field

.field private final parentAsin:Lcom/audible/mobile/domain/Asin;

.field private final productId:Lcom/audible/mobile/domain/ProductId;

.field private final publisherName:Ljava/lang/String;

.field private final publisherSummary:Ljava/lang/String;

.field private final releaseDate:Ljava/util/Date;

.field private final runtimeLength:Lcom/audible/mobile/domain/Time;

.field private final sampleUrl:Landroid/net/Uri;

.field private final voiceDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 99
    new-instance v0, Lcom/audible/mobile/network/apis/domain/ProductImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/network/apis/domain/ProductImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const-class v0, Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->asin:Lcom/audible/mobile/domain/Asin;

    .line 201
    const-class v0, Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->parentAsin:Lcom/audible/mobile/domain/Asin;

    .line 202
    const-class v0, Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/ProductId;

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->productId:Lcom/audible/mobile/domain/ProductId;

    .line 203
    const-class v0, Lcom/audible/mobile/domain/BookTitle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/BookTitle;

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->bookTitle:Lcom/audible/mobile/domain/BookTitle;

    .line 205
    const-class v0, Lcom/audible/mobile/domain/Person;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 206
    const-class v1, Lcom/audible/mobile/domain/Person;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v1

    .line 207
    new-instance v2, Ljava/util/TreeSet;

    array-length v3, v0

    const-class v4, [Lcom/audible/mobile/domain/Person;

    invoke-static {v0, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->authors:Ljava/util/SortedSet;

    .line 208
    new-instance v0, Ljava/util/TreeSet;

    array-length v2, v1

    const-class v3, [Lcom/audible/mobile/domain/Person;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->narrators:Ljava/util/SortedSet;

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherName:Ljava/lang/String;

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherSummary:Ljava/lang/String;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->audibleEditorsSummary:Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->editorialReviews:Ljava/util/List;

    .line 214
    const-class v1, Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 216
    invoke-static {}, Lcom/audible/mobile/domain/ContentType;->values()[Lcom/audible/mobile/domain/ContentType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentType:Lcom/audible/mobile/domain/ContentType;

    .line 217
    invoke-static {}, Lcom/audible/mobile/domain/ContentDeliveryType;->values()[Lcom/audible/mobile/domain/ContentDeliveryType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 218
    invoke-static {}, Lcom/audible/mobile/domain/FormatType;->values()[Lcom/audible/mobile/domain/FormatType;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formatType:Lcom/audible/mobile/domain/FormatType;

    .line 219
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->releaseDate:Ljava/util/Date;

    .line 220
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->sampleUrl:Landroid/net/Uri;

    .line 221
    const-class v0, Lcom/audible/mobile/domain/Time;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Time;

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->runtimeLength:Lcom/audible/mobile/domain/Time;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    invoke-static {}, Lcom/audible/mobile/domain/Format;->values()[Lcom/audible/mobile/domain/Format;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formats:Ljava/util/Set;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 227
    iget-object v4, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formats:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v5, v1, v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 230
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 231
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->images:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 233
    iget-object v3, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->images:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/audio/metadata/CoverArtType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/audible/mobile/util/UrlUtils;->toUrl(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->copyright:Ljava/util/Map;

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 239
    iget-object v3, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->copyright:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 242
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->isAdultProduct:Z

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->voiceDescription:Ljava/lang/String;

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->language:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2b

    .line 608
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_13

    .line 611
    :cond_1
    check-cast p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;

    .line 613
    iget-boolean v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->isAdultProduct:Z

    iget-boolean v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->isAdultProduct:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 615
    :cond_2
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    .line 617
    :cond_4
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->parentAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_5

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->parentAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->parentAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_6

    :goto_1
    return v1

    .line 619
    :cond_6
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->productId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_8

    :goto_2
    return v1

    .line 621
    :cond_8
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->bookTitle:Lcom/audible/mobile/domain/BookTitle;

    if-eqz v2, :cond_9

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->bookTitle:Lcom/audible/mobile/domain/BookTitle;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->bookTitle:Lcom/audible/mobile/domain/BookTitle;

    if-eqz v2, :cond_a

    :goto_3
    return v1

    .line 623
    :cond_a
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->authors:Ljava/util/SortedSet;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->authors:Ljava/util/SortedSet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_4

    :cond_b
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->authors:Ljava/util/SortedSet;

    if-eqz v2, :cond_c

    :goto_4
    return v1

    .line 625
    :cond_c
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->narrators:Ljava/util/SortedSet;

    if-eqz v2, :cond_d

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->narrators:Ljava/util/SortedSet;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_5

    :cond_d
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->narrators:Ljava/util/SortedSet;

    if-eqz v2, :cond_e

    :goto_5
    return v1

    .line 627
    :cond_e
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherName:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_6

    :cond_f
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherName:Ljava/lang/String;

    if-eqz v2, :cond_10

    :goto_6
    return v1

    .line 629
    :cond_10
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherSummary:Ljava/lang/String;

    if-eqz v2, :cond_11

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_7

    :cond_11
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherSummary:Ljava/lang/String;

    if-eqz v2, :cond_12

    :goto_7
    return v1

    .line 631
    :cond_12
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->audibleEditorsSummary:Ljava/lang/String;

    if-eqz v2, :cond_13

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->audibleEditorsSummary:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_8

    :cond_13
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->audibleEditorsSummary:Ljava/lang/String;

    if-eqz v2, :cond_14

    :goto_8
    return v1

    .line 633
    :cond_14
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->editorialReviews:Ljava/util/List;

    if-eqz v2, :cond_15

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->editorialReviews:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_9

    :cond_15
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->editorialReviews:Ljava/util/List;

    if-eqz v2, :cond_16

    :goto_9
    return v1

    .line 635
    :cond_16
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentType:Lcom/audible/mobile/domain/ContentType;

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentType:Lcom/audible/mobile/domain/ContentType;

    if-eq v2, v3, :cond_17

    return v1

    .line 637
    :cond_17
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    if-eq v2, v3, :cond_18

    return v1

    .line 639
    :cond_18
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formatType:Lcom/audible/mobile/domain/FormatType;

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formatType:Lcom/audible/mobile/domain/FormatType;

    if-eq v2, v3, :cond_19

    return v1

    .line 641
    :cond_19
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->releaseDate:Ljava/util/Date;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->releaseDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_a

    :cond_1a
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->releaseDate:Ljava/util/Date;

    if-eqz v2, :cond_1b

    :goto_a
    return v1

    .line 643
    :cond_1b
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->sampleUrl:Landroid/net/Uri;

    if-eqz v2, :cond_1c

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->sampleUrl:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_b

    :cond_1c
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->sampleUrl:Landroid/net/Uri;

    if-eqz v2, :cond_1d

    :goto_b
    return v1

    .line 645
    :cond_1d
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->runtimeLength:Lcom/audible/mobile/domain/Time;

    if-eqz v2, :cond_1e

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->runtimeLength:Lcom/audible/mobile/domain/Time;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_c

    :cond_1e
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->runtimeLength:Lcom/audible/mobile/domain/Time;

    if-eqz v2, :cond_1f

    :goto_c
    return v1

    .line 647
    :cond_1f
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formats:Ljava/util/Set;

    if-eqz v2, :cond_20

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formats:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_d

    :cond_20
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formats:Ljava/util/Set;

    if-eqz v2, :cond_21

    :goto_d
    return v1

    .line 649
    :cond_21
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->images:Ljava/util/Map;

    if-eqz v2, :cond_22

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->images:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_e

    :cond_22
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->images:Ljava/util/Map;

    if-eqz v2, :cond_23

    :goto_e
    return v1

    .line 651
    :cond_23
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->voiceDescription:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->voiceDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_f

    :cond_24
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->voiceDescription:Ljava/lang/String;

    if-eqz v2, :cond_25

    :goto_f
    return v1

    .line 653
    :cond_25
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->language:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->language:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    goto :goto_10

    :cond_26
    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->language:Ljava/lang/String;

    if-eqz v2, :cond_27

    :goto_10
    return v1

    .line 655
    :cond_27
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->copyright:Ljava/util/Map;

    iget-object p1, p1, Lcom/audible/mobile/network/apis/domain/ProductImpl;->copyright:Ljava/util/Map;

    if-eqz v2, :cond_28

    invoke-interface {v2, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2a

    goto :goto_11

    :cond_28
    if-nez p1, :cond_29

    goto :goto_12

    :cond_29
    :goto_11
    const/4 v0, 0x0

    :cond_2a
    :goto_12
    return v0

    :cond_2b
    :goto_13
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 662
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->asin:Lcom/audible/mobile/domain/Asin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 663
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->parentAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 664
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 665
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->bookTitle:Lcom/audible/mobile/domain/BookTitle;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 666
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->authors:Ljava/util/SortedSet;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 667
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->narrators:Ljava/util/SortedSet;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 668
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherName:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 669
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherSummary:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 670
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->audibleEditorsSummary:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 671
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->editorialReviews:Ljava/util/List;

    if-eqz v2, :cond_9

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 672
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentType:Lcom/audible/mobile/domain/ContentType;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 673
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 674
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formatType:Lcom/audible/mobile/domain/FormatType;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 675
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->releaseDate:Ljava/util/Date;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/util/Date;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 676
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->sampleUrl:Landroid/net/Uri;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 677
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->runtimeLength:Lcom/audible/mobile/domain/Time;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 678
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formats:Ljava/util/Set;

    if-eqz v2, :cond_10

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 679
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->images:Ljava/util/Map;

    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 680
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->copyright:Ljava/util/Map;

    if-eqz v2, :cond_12

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 681
    iget-boolean v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->isAdultProduct:Z

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 682
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->voiceDescription:Ljava/lang/String;

    if-eqz v2, :cond_13

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 683
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->language:Ljava/lang/String;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_14
    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 567
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 568
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->parentAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 569
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->productId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 570
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->bookTitle:Lcom/audible/mobile/domain/BookTitle;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 571
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->authors:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/audible/mobile/domain/Person;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 572
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->narrators:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v1

    new-array v1, v1, [Lcom/audible/mobile/domain/Person;

    invoke-interface {v0, v1}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V

    .line 573
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->publisherSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->audibleEditorsSummary:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->editorialReviews:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 577
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentType:Lcom/audible/mobile/domain/ContentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formatType:Lcom/audible/mobile/domain/FormatType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 580
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->releaseDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 581
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->sampleUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 582
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->runtimeLength:Lcom/audible/mobile/domain/Time;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 583
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formats:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->formats:Ljava/util/Set;

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Format;

    .line 585
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 587
    :cond_0
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->images:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->images:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 590
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 593
    :cond_1
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->copyright:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->copyright:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 595
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 596
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_2

    .line 598
    :cond_2
    iget-boolean p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->isAdultProduct:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 599
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->voiceDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/ProductImpl;->language:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
