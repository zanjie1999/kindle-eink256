.class public final Lcom/audible/mobile/audio/metadata/AudiobookMetadata;
.super Ljava/lang/Object;
.source "AudiobookMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;,
        Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/audio/metadata/AudiobookMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final author:Ljava/lang/String;

.field private final category:Ljava/lang/String;

.field private final chapters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

.field private final contentType:Lcom/audible/mobile/domain/ContentType;

.field private final copyright:Ljava/lang/String;

.field private final coverArtUrl:Ljava/lang/String;

.field private final duration:I

.field private final fileName:Landroid/net/Uri;

.field private final longDescription:Ljava/lang/String;

.field private final narrator:Ljava/lang/String;

.field private final parentProductId:Lcom/audible/mobile/domain/ProductId;

.field private final parentShortTitle:Ljava/lang/String;

.field private final parentTitle:Ljava/lang/String;

.field private final pdfUrl:Ljava/lang/String;

.field private final productId:Lcom/audible/mobile/domain/ProductId;

.field private final provider:Ljava/lang/String;

.field private final publishDate:Ljava/lang/String;

.field private final quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

.field private final shortDescription:Ljava/lang/String;

.field private final shortTitle:Ljava/lang/String;

.field private final subCategory:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final trackNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 150
    new-instance v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$1;

    invoke-direct {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    .line 86
    const-class v0, Lcom/audible/mobile/domain/ImmutableAsinImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/Asin;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    .line 87
    const-class v0, Lcom/audible/mobile/domain/ImmutableProductIdImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/ProductId;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    .line 88
    const-class v0, Lcom/audible/mobile/domain/ImmutableProductIdImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/ProductId;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    .line 89
    const-class v0, Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->title:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->trackNumber:I

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    .line 108
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    sget-object v1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/domain/ContentType;

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentType:Lcom/audible/mobile/domain/ContentType;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/domain/ContentDeliveryType;

    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 111
    iget-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/audible/mobile/audio/metadata/AudiobookMetadata$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    .line 56
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$000(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    .line 57
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$100(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/ProductId;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    .line 58
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$200(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/ProductId;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    .line 59
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$300(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    .line 60
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$400(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$500(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$600(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    .line 63
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$700(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$800(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$900(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1000(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1100(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->title:Ljava/lang/String;

    .line 68
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1200(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1300(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1400(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1500(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1600(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1700(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    .line 74
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1800(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$1900(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    .line 76
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$2000(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)I

    move-result v0

    iput v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->trackNumber:I

    .line 77
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$2100(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 78
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$2200(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    .line 79
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$2300(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/ContentType;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentType:Lcom/audible/mobile/domain/ContentType;

    .line 80
    invoke-static {p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;->access$2400(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)Lcom/audible/mobile/domain/ContentDeliveryType;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 81
    iget-object p1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;Lcom/audible/mobile/audio/metadata/AudiobookMetadata$1;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;-><init>(Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Builder;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/audible/mobile/audio/metadata/AudiobookMetadata;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    return p0
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

    if-eqz p1, :cond_2f

    .line 457
    const-class v2, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_14

    .line 460
    :cond_1
    check-cast p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;

    .line 462
    iget v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    iget v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    if-eq v2, v3, :cond_2

    return v1

    .line 464
    :cond_2
    iget v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->trackNumber:I

    iget v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->trackNumber:I

    if-eq v2, v3, :cond_3

    return v1

    .line 466
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_4

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_5

    :goto_0
    return v1

    .line 468
    :cond_5
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_1

    :cond_6
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    if-eqz v2, :cond_7

    :goto_1
    return v1

    .line 470
    :cond_7
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    :cond_8
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    if-eqz v2, :cond_9

    :goto_2
    return v1

    .line 472
    :cond_9
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    if-eqz v2, :cond_a

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_3

    :cond_a
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    if-eqz v2, :cond_b

    :goto_3
    return v1

    .line 474
    :cond_b
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentType:Lcom/audible/mobile/domain/ContentType;

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentType:Lcom/audible/mobile/domain/ContentType;

    if-eq v2, v3, :cond_c

    return v1

    .line 476
    :cond_c
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    if-eq v2, v3, :cond_d

    return v1

    .line 478
    :cond_d
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    :cond_e
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_4
    return v1

    .line 480
    :cond_f
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    if-eqz v2, :cond_10

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_5

    :cond_10
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    if-eqz v2, :cond_11

    :goto_5
    return v1

    .line 482
    :cond_11
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    if-eqz v2, :cond_12

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_6

    :cond_12
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    if-eqz v2, :cond_13

    :goto_6
    return v1

    .line 484
    :cond_13
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    if-eqz v2, :cond_14

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_7

    :cond_14
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    if-eqz v2, :cond_15

    :goto_7
    return v1

    .line 486
    :cond_15
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_16

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    goto :goto_8

    :cond_16
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_17

    :goto_8
    return v1

    .line 488
    :cond_17
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    if-eqz v2, :cond_18

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_9

    :cond_18
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    if-eqz v2, :cond_19

    :goto_9
    return v1

    .line 490
    :cond_19
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_a

    :cond_1a
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    if-eqz v2, :cond_1b

    :goto_a
    return v1

    .line 492
    :cond_1b
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_1c

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    goto :goto_b

    :cond_1c
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_1d

    :goto_b
    return v1

    .line 494
    :cond_1d
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    goto :goto_c

    :cond_1e
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    if-eqz v2, :cond_1f

    :goto_c
    return v1

    .line 496
    :cond_1f
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    goto :goto_d

    :cond_20
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    if-eqz v2, :cond_21

    :goto_d
    return v1

    .line 498
    :cond_21
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    if-eqz v2, :cond_22

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    goto :goto_e

    :cond_22
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    if-eqz v2, :cond_23

    :goto_e
    return v1

    .line 500
    :cond_23
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    if-eqz v2, :cond_24

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    goto :goto_f

    :cond_24
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    if-eqz v2, :cond_25

    :goto_f
    return v1

    .line 502
    :cond_25
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    if-eq v2, v3, :cond_26

    return v1

    .line 504
    :cond_26
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    if-eqz v2, :cond_27

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    goto :goto_10

    :cond_27
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    if-eqz v2, :cond_28

    :goto_10
    return v1

    .line 506
    :cond_28
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    if-eqz v2, :cond_29

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    goto :goto_11

    :cond_29
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    if-eqz v2, :cond_2a

    :goto_11
    return v1

    .line 508
    :cond_2a
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    if-eqz v2, :cond_2b

    iget-object v3, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    goto :goto_12

    :cond_2b
    iget-object v2, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    if-eqz v2, :cond_2c

    :goto_12
    return v1

    .line 510
    :cond_2c
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->title:Ljava/lang/String;

    if-eqz v2, :cond_2d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2e

    goto :goto_13

    :cond_2d
    if-eqz p1, :cond_2e

    :goto_13
    return v1

    :cond_2e
    return v0

    :cond_2f
    :goto_14
    return v1
.end method

.method public final getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAudioQuality()Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;
    .locals 1

    .line 431
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    return-object v0
.end method

.method public final getAuthor()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    return-object v0
.end method

.method public final getCategory()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    return-object v0
.end method

.method public final getChapterCount()I
    .locals 2

    .line 378
    sget-object v0, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getChapters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    .line 421
    sget-object v0, Lcom/audible/mobile/util/ChapterUtils;->INSTANCE:Lcom/audible/mobile/util/ChapterUtils;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/util/ChapterUtils;->getFlattenedChapterList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getContentDeliveryType()Lcom/audible/mobile/domain/ContentDeliveryType;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    return-object v0
.end method

.method public final getContentType()Lcom/audible/mobile/domain/ContentType;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentType:Lcom/audible/mobile/domain/ContentType;

    return-object v0
.end method

.method public final getCopyright()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 358
    iget v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getFile()Landroid/net/Uri;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    return-object v0
.end method

.method public final getLongDescription()Ljava/lang/String;
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getNarrator()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentProductId()Lcom/audible/mobile/domain/ProductId;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    return-object v0
.end method

.method public final getParentShortTitle()Ljava/lang/String;
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getParentTitle()Ljava/lang/String;
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductId()Lcom/audible/mobile/domain/ProductId;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    return-object v0
.end method

.method public final getProvider()Ljava/lang/String;
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public final getPublishDate()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortDescription()Ljava/lang/String;
    .locals 1

    .line 268
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getShortTitle()Ljava/lang/String;
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    return-object v0
.end method

.method public final getSubcategory()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrackNumber()I
    .locals 1

    .line 368
    iget v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->trackNumber:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 520
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 521
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 522
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 523
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 524
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 525
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 526
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 527
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_8

    :cond_8
    const/4 v2, 0x0

    :goto_8
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 528
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_9

    :cond_9
    const/4 v2, 0x0

    :goto_9
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 529
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_a
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 530
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->title:Ljava/lang/String;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_b

    :cond_b
    const/4 v2, 0x0

    :goto_b
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 531
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_c

    :cond_c
    const/4 v2, 0x0

    :goto_c
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 532
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 533
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    :goto_e
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 534
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_f

    :cond_f
    const/4 v2, 0x0

    :goto_f
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 535
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_10
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 536
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_11

    :cond_11
    const/4 v2, 0x0

    :goto_11
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 537
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_12

    :cond_12
    const/4 v2, 0x0

    :goto_12
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 538
    iget v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 539
    iget v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->trackNumber:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 540
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_13

    :cond_13
    const/4 v2, 0x0

    :goto_13
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 541
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_14

    :cond_14
    const/4 v2, 0x0

    :goto_14
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 542
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentType:Lcom/audible/mobile/domain/ContentType;

    if-eqz v2, :cond_15

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v2

    goto :goto_15

    :cond_15
    const/4 v2, 0x0

    :goto_15
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 543
    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :cond_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 550
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudiobookMetadata{asin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", parentProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", author=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", narrator=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", category=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", subCategory=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", copyright=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", longDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shortDescription=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", shortTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", parentTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", parentShortTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", provider=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", publishDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pdfUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", coverArtUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", trackNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->trackNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chapters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", quality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentType:Lcom/audible/mobile/domain/ContentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentDeliveryType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 124
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->productId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 125
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentProductId:Lcom/audible/mobile/domain/ProductId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 126
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->fileName:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 127
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->author:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->narrator:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->category:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->subCategory:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->copyright:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->longDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortDescription:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 135
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->shortTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->parentShortTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->provider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->publishDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->pdfUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->coverArtUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->duration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->trackNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->quality:Lcom/audible/mobile/audio/metadata/AudiobookMetadata$Quality;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->chapters:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 146
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentType:Lcom/audible/mobile/domain/ContentType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 147
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/AudiobookMetadata;->contentDeliveryType:Lcom/audible/mobile/domain/ContentDeliveryType;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
