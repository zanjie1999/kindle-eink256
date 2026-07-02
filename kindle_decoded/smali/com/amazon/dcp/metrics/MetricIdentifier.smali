.class public Lcom/amazon/dcp/metrics/MetricIdentifier;
.super Ljava/lang/Object;
.source "MetricIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/dcp/metrics/MetricIdentifier$Level;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mComponent:Ljava/lang/String;

.field final mDomain:Ljava/lang/String;

.field final mLevel:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

.field final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/dcp/metrics/MetricIdentifier$1;

    invoke-direct {v0}, Lcom/amazon/dcp/metrics/MetricIdentifier$1;-><init>()V

    sput-object v0, Lcom/amazon/dcp/metrics/MetricIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/dcp/metrics/MetricIdentifier$Level;->fromCode(I)Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/dcp/metrics/MetricIdentifier;-><init>(Lcom/amazon/dcp/metrics/MetricIdentifier$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/dcp/metrics/MetricIdentifier$Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    .line 81
    iput-object p1, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mLevel:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    .line 82
    iput-object p2, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mDomain:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mComponent:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mName:Ljava/lang/String;

    return-void

    .line 78
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private static equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 255
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 223
    instance-of v0, p1, Lcom/amazon/dcp/metrics/MetricIdentifier;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 227
    :cond_0
    check-cast p1, Lcom/amazon/dcp/metrics/MetricIdentifier;

    .line 228
    iget-object v0, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mDomain:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/dcp/metrics/MetricIdentifier;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/dcp/metrics/MetricIdentifier;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mComponent:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/dcp/metrics/MetricIdentifier;->getComponent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/dcp/metrics/MetricIdentifier;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/dcp/metrics/MetricIdentifier;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/dcp/metrics/MetricIdentifier;->equivalentStrings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getComponent()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mComponent:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mComponent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 242
    iget-object v2, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mDomain:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 243
    iget-object v1, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mLevel:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mDomain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mComponent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 106
    iget-object p2, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mLevel:Lcom/amazon/dcp/metrics/MetricIdentifier$Level;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object p2, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mDomain:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-object p2, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mComponent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/amazon/dcp/metrics/MetricIdentifier;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
