.class public Lcom/amazon/kcp/library/LibraryItemId;
.super Lcom/amazon/kindle/krx/library/BaseLibraryItemId;
.source "LibraryItemId.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private final cmsId:J

.field private final isReaderContent:Z

.field private final isSample:Z

.field private final serializedBookID:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/amazon/kcp/library/LibraryItemId$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/LibraryItemId$1;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryItemId;-><init>()V

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->isReaderContent:Z

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kcp/library/LibraryItemId;->isSample:Z

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->title:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->serializedBookID:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->cmsId:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/kcp/library/LibraryItemId$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/LibraryItemId;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryItemId;-><init>()V

    .line 19
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->isReaderContent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->isReaderContent:Z

    .line 20
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->isSample:Z

    .line 21
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->title:Ljava/lang/String;

    .line 22
    invoke-interface {p1}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryItemId;->serializedBookID:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 23
    iput-wide v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->cmsId:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCmsItemId()J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->cmsId:J

    return-wide v0
.end method

.method public getSerializedBookID()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->serializedBookID:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isReaderContent()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->isReaderContent:Z

    return v0
.end method

.method public isSample()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->isSample:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 59
    iget-boolean p2, p0, Lcom/amazon/kcp/library/LibraryItemId;->isReaderContent:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    iget-boolean p2, p0, Lcom/amazon/kcp/library/LibraryItemId;->isSample:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryItemId;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryItemId;->serializedBookID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget-wide v0, p0, Lcom/amazon/kcp/library/LibraryItemId;->cmsId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
