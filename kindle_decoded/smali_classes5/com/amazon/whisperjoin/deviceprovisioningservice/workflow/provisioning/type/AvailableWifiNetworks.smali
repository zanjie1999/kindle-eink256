.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;
.super Ljava/lang/Object;
.source "AvailableWifiNetworks.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfiguredNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPreferred:Z

.field private mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

.field private mUnrecognizedNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 77
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mConfiguredNetworks:Ljava/util/List;

    .line 32
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mUnrecognizedNetworks:Ljava/util/List;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mHasPreferred:Z

    if-eqz v1, :cond_1

    .line 35
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 37
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ">;",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ")V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mConfiguredNetworks:Ljava/util/List;

    .line 25
    iput-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mUnrecognizedNetworks:Ljava/util/List;

    .line 26
    iput-object p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 27
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mHasPreferred:Z

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

    if-eqz p1, :cond_7

    .line 91
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;

    .line 95
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mHasPreferred:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mHasPreferred:Z

    if-eq v2, v3, :cond_2

    return v1

    .line 96
    :cond_2
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mConfiguredNetworks:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 97
    :cond_3
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mUnrecognizedNetworks:Ljava/util/List;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mUnrecognizedNetworks:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    .line 98
    :cond_4
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ">;"
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mConfiguredNetworks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPreferredConfiguredNetwork()Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    return-object v0
.end method

.method public getUnrecognizedNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mUnrecognizedNetworks:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mUnrecognizedNetworks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 106
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mHasPreferred:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 107
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 43
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mConfiguredNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mUnrecognizedNetworks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "AvailableWifiNetworks Configured Count: %d, Unrecognized Count: %d"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mConfiguredNetworks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mUnrecognizedNetworks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 71
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mHasPreferred:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mHasPreferred:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetworks;->mPreferred:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AvailableWifiNetwork;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_0
    return-void
.end method
