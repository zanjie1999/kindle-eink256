.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;
.super Ljava/lang/Object;
.source "ProvisioneeSetupStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

.field private final mErrorCode:Ljava/lang/String;

.field private final mLastUpdatedTime:Ljava/lang/String;

.field private final mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

.field private final mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

.field private final mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

.field private final mProvisioningMethod:Ljava/lang/String;

.field private final mProvisioningState:Ljava/lang/String;

.field private final mProvisioningStatus:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 155
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    .line 42
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    .line 43
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    .line 44
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$000(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    .line 30
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$100(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    .line 31
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$200(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    .line 32
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$300(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    .line 33
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$400(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    .line 34
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$500(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$600(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$700(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;->access$800(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$1;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus$Builder;)V

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

    .line 71
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 74
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;

    .line 75
    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    .line 76
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    .line 77
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    .line 78
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    .line 79
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    .line 80
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    .line 81
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    .line 82
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    .line 83
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

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 88
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    const-string v2, "mAuthMaterialIdentifier"

    .line 89
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    const-string v2, "mProvisionerInformation"

    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    const-string v2, "mProvisioneeAuthMaterialIdentifier"

    .line 91
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    const-string v2, "mProvisioneeBarcodeIdentifier"

    .line 92
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    const-string v2, "mErrorCode"

    .line 93
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    const-string v2, "mLastUpdatedTime"

    .line 94
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    const-string v2, "mProvisioningMethod"

    .line 95
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    const-string v2, "mProvisioningState"

    .line 96
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    const-string v2, "mProvisioningStatus"

    .line 97
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 98
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 145
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisionerInformation:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/LegacyIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeAuthMaterialIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/AuthMaterialIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 147
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioneeBarcodeIdentifier:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/BarcodeIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mErrorCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mLastUpdatedTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningState:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-object p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ProvisioneeSetupStatus;->mProvisioningStatus:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
