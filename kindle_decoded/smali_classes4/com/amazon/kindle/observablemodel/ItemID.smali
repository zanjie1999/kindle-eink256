.class public Lcom/amazon/kindle/observablemodel/ItemID;
.super Ljava/lang/Object;
.source "ItemID.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/observablemodel/ItemID;",
            ">;"
        }
    .end annotation
.end field

.field public static final ITEM_TYPE_BOOK:I = 0x1

.field public static final ITEM_TYPE_COLLECTION:I = 0x3

.field public static final ITEM_TYPE_NARRATIVE:I = 0x5

.field public static final ITEM_TYPE_PERIODICAL:I = 0x4

.field public static final ITEM_TYPE_SERIES:I = 0x2


# instance fields
.field private mIdentifier:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/amazon/kindle/observablemodel/ItemID$1;

    invoke-direct {v0}, Lcom/amazon/kindle/observablemodel/ItemID$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/observablemodel/ItemID;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    const-string v1, ""

    .line 16
    iput-object v1, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    .line 20
    iput v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    .line 21
    iput-object v1, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    .line 25
    iput p1, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    .line 26
    iput-object p2, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 15
    iput v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    const-string v0, ""

    .line 16
    iput-object v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    return-void
.end method

.method public static bookItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    .line 30
    new-instance v0, Lcom/amazon/kindle/observablemodel/ItemID;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static collectionItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    .line 38
    new-instance v0, Lcom/amazon/kindle/observablemodel/ItemID;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static narrativeItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    .line 46
    new-instance v0, Lcom/amazon/kindle/observablemodel/ItemID;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static periodicalItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    .line 42
    new-instance v0, Lcom/amazon/kindle/observablemodel/ItemID;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static seriesItemWithIdentifier(Ljava/lang/String;)Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 2

    .line 34
    new-instance v0, Lcom/amazon/kindle/observablemodel/ItemID;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/observablemodel/ItemID;-><init>(ILjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 64
    instance-of v0, p1, Lcom/amazon/kindle/observablemodel/ItemID;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    check-cast p1, Lcom/amazon/kindle/observablemodel/ItemID;

    .line 69
    iget v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    iget v2, p1, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    if-eq v0, v2, :cond_1

    return v1

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public getParentID()Lcom/amazon/kindle/observablemodel/ItemID;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    iget v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "U"

    goto :goto_0

    :cond_0
    const-string v0, "N"

    goto :goto_0

    :cond_1
    const-string v0, "P"

    goto :goto_0

    :cond_2
    const-string v0, "C"

    goto :goto_0

    :cond_3
    const-string v0, "S"

    goto :goto_0

    :cond_4
    const-string v0, "B"

    .line 99
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<ItemID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 109
    iget p2, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget-object p2, p0, Lcom/amazon/kindle/observablemodel/ItemID;->mIdentifier:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
