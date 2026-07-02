.class public Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;
.super Lcom/amazon/devicesetupservice/ProvisioneeDetails;
.source "LocalNotificationProvisioneeDetails.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private advertisedSdkVersionIndex:I

.field private advertisementVersion:I

.field private authMaterialIndex:Ljava/lang/String;

.field private authenticationMode:I

.field private connectivityErrorCode:Ljava/lang/String;

.field private nonce:Ljava/lang/String;

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

    const-string v2, "com.amazon.devicesetupservice.pwsync.v1.LocalNotificationProvisioneeDetails"

    aput-object v2, v0, v1

    .line 102
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->classNameHashCode:I

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

    .line 129
    instance-of v0, p1, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 133
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;

    .line 136
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/ProvisioneeDetails;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisedSdkVersionIndex:I

    .line 137
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisedSdkVersionIndex:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisementVersion:I

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisementVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authenticationMode:I

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authenticationMode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    .line 140
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    .line 141
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->nonce:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->nonce:Ljava/lang/String;

    .line 142
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->productIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->productIndex:Ljava/lang/String;

    .line 143
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    .line 144
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->radio:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->radio:Ljava/lang/String;

    .line 145
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->rssi:I

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, v0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->rssi:I

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

    .line 22
    iget v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisedSdkVersionIndex:I

    return v0
.end method

.method public getAdvertisementVersion()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisementVersion:I

    return v0
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthenticationMode()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authenticationMode:I

    return v0
.end method

.method public getConnectivityErrorCode()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getNonce()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->nonce:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProvisioneeInfo()Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-object v0
.end method

.method public getRadio()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->radio:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->rssi:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/Object;

    .line 110
    invoke-super {p0}, Lcom/amazon/devicesetupservice/ProvisioneeDetails;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->classNameHashCode:I

    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisedSdkVersionIndex:I

    .line 112
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisementVersion:I

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authenticationMode:I

    .line 114
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->nonce:Ljava/lang/String;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->productIndex:Ljava/lang/String;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->radio:Ljava/lang/String;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->rssi:I

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 109
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAdvertisedSdkVersionIndex(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisedSdkVersionIndex:I

    return-void
.end method

.method public setAdvertisementVersion(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->advertisementVersion:I

    return-void
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setAuthenticationMode(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->authenticationMode:I

    return-void
.end method

.method public setConnectivityErrorCode(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->connectivityErrorCode:Ljava/lang/String;

    return-void
.end method

.method public setNonce(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->nonce:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setProvisioneeInfo(Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->provisioneeInfo:Lcom/amazon/devicesetupservice/v1/ProvisionableInfo;

    return-void
.end method

.method public setRadio(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->radio:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/LocalNotificationProvisioneeDetails;->rssi:I

    return-void
.end method
