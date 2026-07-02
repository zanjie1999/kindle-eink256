.class public Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;
.super Ljava/lang/Object;
.source "GetWifiSyncAuthTokenOutput.java"


# static fields
.field private static final classNameHashCode:I


# instance fields
.field private endpointToUse:Ljava/lang/String;

.field private wifiSyncAuthToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "com.amazon.devicesetupservice.pwsync.v1.GetWifiSyncAuthTokenOutput"

    aput-object v2, v0, v1

    .line 27
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->classNameHashCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 45
    instance-of v0, p1, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 49
    :cond_0
    check-cast p1, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;

    .line 51
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->endpointToUse:Ljava/lang/String;

    iget-object v2, p1, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->endpointToUse:Ljava/lang/String;

    .line 52
    invoke-static {v0, v2}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->wifiSyncAuthToken:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->wifiSyncAuthToken:Ljava/lang/String;

    .line 53
    invoke-static {v0, p1}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getEndpointToUse()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->endpointToUse:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiSyncAuthToken()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->wifiSyncAuthToken:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    sget v1, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->classNameHashCode:I

    .line 35
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->endpointToUse:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->wifiSyncAuthToken:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 34
    invoke-static {v0}, Lcom/amazon/CoralAndroidClient/ClientBase/Helper;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setEndpointToUse(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->endpointToUse:Ljava/lang/String;

    return-void
.end method

.method public setWifiSyncAuthToken(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/devicesetupservice/pwsync/v1/GetWifiSyncAuthTokenOutput;->wifiSyncAuthToken:Ljava/lang/String;

    return-void
.end method
