.class public final Lcom/amazon/dcp/ota/UpdateManifest;
.super Ljava/lang/Object;
.source "UpdateManifest.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/dcp/ota/UpdateManifest;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:I = 0x4


# instance fields
.field private mCheckReason:Lcom/amazon/dcp/ota/UpdateCheckReason;

.field private mId:J

.field private final mIdentifier:Ljava/lang/String;

.field private mPriority:I

.field private final mUpdates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/dcp/ota/Update;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/dcp/ota/UpdateManifest$1;

    invoke-direct {v0}, Lcom/amazon/dcp/ota/UpdateManifest$1;-><init>()V

    sput-object v0, Lcom/amazon/dcp/ota/UpdateManifest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mId:J

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mUpdates:Ljava/util/List;

    const v0, 0x7fffffff

    .line 44
    iput v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mPriority:I

    .line 45
    sget-object v0, Lcom/amazon/dcp/ota/UpdateCheckReason;->Unknown:Lcom/amazon/dcp/ota/UpdateCheckReason;

    iput-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mCheckReason:Lcom/amazon/dcp/ota/UpdateCheckReason;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 41
    iput-wide v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mId:J

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mUpdates:Ljava/util/List;

    const v0, 0x7fffffff

    .line 44
    iput v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mPriority:I

    .line 45
    sget-object v0, Lcom/amazon/dcp/ota/UpdateCheckReason;->Unknown:Lcom/amazon/dcp/ota/UpdateCheckReason;

    iput-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mCheckReason:Lcom/amazon/dcp/ota/UpdateCheckReason;

    .line 54
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "identifier may not be null"

    invoke-static {p1, v0, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    const-class v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "identifier may not be empty"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/dcp/framework/Checks;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iput-object p1, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/UpdateManifest;
    .locals 0

    .line 22
    invoke-static {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->fromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/UpdateManifest;

    move-result-object p0

    return-object p0
.end method

.method private static fromParcel(Landroid/os/Parcel;)Lcom/amazon/dcp/ota/UpdateManifest;
    .locals 7

    .line 338
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x4

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-class v3, Ljava/lang/IllegalArgumentException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v6, 0x1

    aput-object v0, v4, v6

    const-string v0, "Expected parcel v%d, but received v%d."

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/amazon/dcp/framework/Checks;->checkEquals(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 344
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Lcom/amazon/dcp/ota/UpdateManifest;

    invoke-direct {v1, v0}, Lcom/amazon/dcp/ota/UpdateManifest;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amazon/dcp/ota/UpdateManifest;->mId:J

    .line 347
    const-class v0, Lcom/amazon/dcp/ota/UpdateCheckReason;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/dcp/ota/UpdateCheckReason;

    invoke-virtual {v1, v0}, Lcom/amazon/dcp/ota/UpdateManifest;->setCheckReason(Lcom/amazon/dcp/ota/UpdateCheckReason;)V

    .line 349
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    :goto_0
    if-ge v5, v0, :cond_0

    .line 352
    const-class v2, Lcom/amazon/dcp/ota/Update;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/amazon/dcp/ota/Update;

    invoke-virtual {v1, v2}, Lcom/amazon/dcp/ota/UpdateManifest;->addUpdate(Lcom/amazon/dcp/ota/Update;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/amazon/dcp/ota/UpdateManifest;->setPriority(I)V

    return-object v1
.end method


# virtual methods
.method public addUpdate(Lcom/amazon/dcp/ota/Update;)V
    .locals 4

    .line 228
    invoke-virtual {p1}, Lcom/amazon/dcp/ota/Update;->isValid()Z

    move-result v0

    const-class v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Unable to insert invalid update"

    invoke-static {v0, v1, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mUpdates:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

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

    .line 283
    :cond_0
    instance-of v1, p1, Lcom/amazon/dcp/ota/UpdateManifest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 288
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->hashCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    .line 293
    :cond_2
    check-cast p1, Lcom/amazon/dcp/ota/UpdateManifest;

    .line 294
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->getPriority()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/UpdateManifest;->getPriority()I

    move-result v3

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->getUpdates()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/dcp/ota/UpdateManifest;->getUpdates()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mIdentifier:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mPriority:I

    return v0
.end method

.method public getUpdates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/dcp/ota/Update;",
            ">;"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mUpdates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->getPriority()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 304
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->getUpdates()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public isValid()Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mUpdates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/dcp/ota/Update;

    .line 197
    invoke-virtual {v1}, Lcom/amazon/dcp/ota/Update;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckReason(Lcom/amazon/dcp/ota/UpdateCheckReason;)V
    .locals 3

    .line 101
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "reason may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iput-object p1, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mCheckReason:Lcom/amazon/dcp/ota/UpdateCheckReason;

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 89
    iput p1, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mPriority:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 319
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->isValid()Z

    move-result p2

    const-class v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Can not parcel an invalid manifest"

    invoke-static {p2, v0, v3, v2}, Lcom/amazon/dcp/framework/Checks;->checkTrue(ZLjava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x4

    .line 320
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 322
    iget-wide v2, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mId:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 323
    iget-object p2, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mCheckReason:Lcom/amazon/dcp/ota/UpdateCheckReason;

    invoke-virtual {p1, p2, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 325
    invoke-virtual {p0}, Lcom/amazon/dcp/ota/UpdateManifest;->getUpdates()Ljava/util/List;

    move-result-object p2

    .line 326
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 328
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/dcp/ota/Update;

    .line 330
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    .line 333
    :cond_0
    iget p2, p0, Lcom/amazon/dcp/ota/UpdateManifest;->mPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
