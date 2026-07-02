.class public Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;
.super Lcom/amazon/devicesetupservice/ProvisioneeDetails;
.source "DistressedProvisioneeDetails.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private advertisedSdkVersionIndex:I

.field private authMaterialIndex:Ljava/lang/String;

.field private connectivityErrorCode:Ljava/lang/String;

.field private networkState:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

.field private radio:Ljava/lang/String;

.field private rssi:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.pwsync.v1.DistressedProvisioneeDetails"

    aput-object v2, v0, v1

    .line 84
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/ProvisioneeDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 109
    instance-of v0, p1, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 113
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;

    .line 116
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/ProvisioneeDetails;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->advertisedSdkVersionIndex:I

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->advertisedSdkVersionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    .line 118
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    .line 119
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->networkState:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->networkState:Ljava/lang/String;

    .line 120
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->productIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->productIndex:Ljava/lang/String;

    .line 121
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 122
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->radio:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->radio:Ljava/lang/String;

    .line 123
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->rssi:I

    .line 124
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, v0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->rssi:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAdvertisedSdkVersionIndex()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->advertisedSdkVersionIndex:I

    return v0
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectivityErrorCode()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkState()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->networkState:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioneeInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->radio:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->rssi:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    invoke-super {p0}, Lcom/amazon/devicesetupservice/ProvisioneeDetails;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->classNameHashCode:I

    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->advertisedSdkVersionIndex:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->networkState:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->productIndex:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->radio:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->rssi:I

    .line 101
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 91
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAdvertisedSdkVersionIndex(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->advertisedSdkVersionIndex:I

    return-void
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setConnectivityErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setNetworkState(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->networkState:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setProvisioneeInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-void
.end method

.method public setRadio(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->radio:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/DistressedProvisioneeDetails;->rssi:I

    return-void
.end method
