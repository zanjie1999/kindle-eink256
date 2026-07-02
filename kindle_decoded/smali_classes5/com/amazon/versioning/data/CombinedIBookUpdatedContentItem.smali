.class public Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;
.super Ljava/lang/Object;
.source "CombinedIBookUpdatedContentItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asin:Ljava/lang/String;

.field private bookId:Ljava/lang/String;

.field private coverImage:Landroid/graphics/Bitmap;

.field private displayTitle:Ljava/lang/String;

.field private displayUpdateTime:Ljava/lang/String;

.field private final embeddedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final revisionId:Ljava/lang/String;

.field private final updateTime:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem$1;

    invoke-direct {v0}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem$1;-><init>()V

    sput-object v0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->asin:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->revisionId:Ljava/lang/String;

    .line 42
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iput-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->embeddedIds:Ljava/util/Set;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->updateTime:Ljava/lang/Long;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->bookId:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->displayTitle:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->displayUpdateTime:Ljava/lang/String;

    .line 47
    invoke-direct {p0}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->updateCoverImage()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->asin:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->revisionId:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->embeddedIds:Ljava/util/Set;

    .line 32
    iput-object p4, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->bookId:Ljava/lang/String;

    .line 33
    iput-object p5, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->updateTime:Ljava/lang/Long;

    .line 34
    iput-object p6, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->displayTitle:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->updateDisplayUpdateTime()V

    .line 36
    invoke-direct {p0}, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->updateCoverImage()V

    return-void
.end method

.method private updateCoverImage()V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->bookId:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getCoverManger()Lcom/amazon/kindle/krx/cover/ICoverManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->bookId:Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;->SMALL:Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/cover/ICoverManager;->getCoverAsBitmap(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->coverImage:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBookId()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->bookId:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverImage()Landroid/graphics/Bitmap;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->coverImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDisplayTitle()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->displayTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayUpdateTime()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->displayUpdateTime:Ljava/lang/String;

    return-object v0
.end method

.method public updateDisplayUpdateTime()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->updateTime:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMM dd, yyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->updateTime:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->displayUpdateTime:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 156
    iget-object p2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->asin:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->revisionId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object p2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->embeddedIds:Ljava/util/Set;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 159
    iget-object p2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->updateTime:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 160
    iget-object p2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->bookId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->displayTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/amazon/versioning/data/CombinedIBookUpdatedContentItem;->displayUpdateTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
