.class public Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;
.super Ljava/lang/Object;
.source "GetProvisioningDetailsOptions.java"


# instance fields
.field private final mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

.field private mForceRescan:Z

.field private final mSessionToken:Ljava/lang/String;

.field private mShouldRetrieveAvailableNetworks:Z

.field private mShouldRetrieveDeviceDetails:Z


# direct methods
.method public constructor <init>(ZZZLjava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveAvailableNetworks:Z

    .line 37
    iput-boolean p2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mForceRescan:Z

    .line 38
    iput-boolean p3, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveDeviceDetails:Z

    .line 39
    iput-object p4, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mSessionToken:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    return-void
.end method

.method public static getAllDetails(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;
    .locals 7

    .line 24
    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, v6

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;-><init>(ZZZLjava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)V

    return-object v6
.end method

.method public static refreshAvailableNetworks(Ljava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;
    .locals 7

    .line 31
    new-instance v6, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;-><init>(ZZZLjava/lang/String;Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 66
    const-class v2, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 67
    :cond_1
    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;

    .line 68
    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveAvailableNetworks:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveAvailableNetworks:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mForceRescan:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mForceRescan:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveDeviceDetails:Z

    iget-boolean v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveDeviceDetails:Z

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mSessionToken:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mSessionToken:Ljava/lang/String;

    .line 71
    invoke-static {v2, v3}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    iget-object p1, p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    .line 72
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

.method public forceRescan()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mForceRescan:Z

    return v0
.end method

.method public getDeviceDetails()Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mSessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 77
    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveAvailableNetworks:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mForceRescan:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveDeviceDetails:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mSessionToken:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/google/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public shouldRetrieveAvailableNetworks()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveAvailableNetworks:Z

    return v0
.end method

.method public shouldRetrieveDeviceDetails()Z
    .locals 1

    .line 48
    iget-boolean v0, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveDeviceDetails:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 82
    invoke-static {p0}, Lcom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveAvailableNetworks:Z

    const-string v2, "mShouldRetrieveAvailableNetworks"

    .line 83
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mForceRescan:Z

    const-string v2, "mForceRescan"

    .line 84
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-boolean v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mShouldRetrieveDeviceDetails:Z

    const-string v2, "mShouldRetrieveDeviceDetails"

    .line 85
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Z)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mSessionToken:Ljava/lang/String;

    const-string v2, "mSessionToken"

    .line 86
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    iget-object v1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/GetProvisioningDetailsOptions;->mDeviceDetails:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/data/provisioning/DeviceDetails;

    const-string v2, "mDeviceDetails"

    .line 87
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 88
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
