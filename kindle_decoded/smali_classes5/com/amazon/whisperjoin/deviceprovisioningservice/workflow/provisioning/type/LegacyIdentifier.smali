.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;
.super Ljava/lang/Object;
.source "LegacyIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDeviceType:Ljava/lang/String;

.field private final mDsn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDsn:Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDeviceType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$1;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDsn:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDeviceType:Ljava/lang/String;

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

    if-eqz p1, :cond_3

    .line 39
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    .line 43
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDsn:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDsn:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDeviceType:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDeviceType:Ljava/lang/String;

    .line 44
    invoke-static {v2, p1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDsn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDeviceType:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 54
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDsn:Ljava/lang/String;

    const-string v2, "mDsn"

    .line 55
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDeviceType:Ljava/lang/String;

    const-string v2, "mDeviceType"

    .line 56
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 57
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 67
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDsn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;->mDeviceType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
