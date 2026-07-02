.class public Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;
.super Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;
.source "ValidateWifiSyncAuthTokenInput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private authMaterialIndex:Ljava/lang/String;

.field private productIndex:Ljava/lang/String;

.field private sessionToken:Ljava/lang/String;

.field private wifiSyncAuthToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.pwsync.v1.ValidateWifiSyncAuthTokenInput"

    aput-object v2, v0, v1

    .line 47
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 68
    instance-of v0, p1, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 72
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;

    .line 75
    invoke-super {p0, p1}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->authMaterialIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->authMaterialIndex:Ljava/lang/String;

    .line 76
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->productIndex:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->productIndex:Ljava/lang/String;

    .line 77
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->sessionToken:Ljava/lang/String;

    iget-object v2, v0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->sessionToken:Ljava/lang/String;

    .line 78
    invoke-static {p1, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->wifiSyncAuthToken:Ljava/lang/String;

    iget-object v0, v0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->wifiSyncAuthToken:Ljava/lang/String;

    .line 79
    invoke-static {p1, v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getAuthMaterialIndex()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->authMaterialIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getProductIndex()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->productIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionToken()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->sessionToken:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSyncAuthToken()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->wifiSyncAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    invoke-super {p0}, Lcom/amazon/devicesetupservice/v1/AuthenticatedInput;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget v1, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->classNameHashCode:I

    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->authMaterialIndex:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->productIndex:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->sessionToken:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->wifiSyncAuthToken:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 54
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAuthMaterialIndex(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->authMaterialIndex:Ljava/lang/String;

    return-void
.end method

.method public setProductIndex(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->productIndex:Ljava/lang/String;

    return-void
.end method

.method public setSessionToken(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->sessionToken:Ljava/lang/String;

    return-void
.end method

.method public setWifiSyncAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/ValidateWifiSyncAuthTokenInput;->wifiSyncAuthToken:Ljava/lang/String;

    return-void
.end method
