.class public Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;
.super Ljava/lang/Object;
.source "ZigbeeFFSEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ZigbeeAuthMaterial"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInstallCode:Ljava/lang/String;

.field private mMacAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mMacAddress:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mInstallCode:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mMacAddress:Ljava/lang/String;

    .line 105
    iput-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mInstallCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;)Ljava/lang/String;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mInstallCode:Ljava/lang/String;

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

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 119
    :cond_0
    instance-of v1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 120
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;

    .line 121
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mMacAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mMacAddress:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mInstallCode:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mInstallCode:Ljava/lang/String;

    .line 122
    invoke-static {v1, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mMacAddress:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mInstallCode:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 110
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mMacAddress:Ljava/lang/String;

    const-string v2, "mMacAddress"

    .line 111
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mInstallCode:Ljava/lang/String;

    const-string v2, "mInstallCode"

    .line 112
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 113
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 94
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/smarthome/data/ZigbeeFFSEntry$ZigbeeAuthMaterial;->mInstallCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
