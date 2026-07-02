.class public Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;
.super Ljava/lang/Object;
.source "GetDevicesRequestModel.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osArchitecture:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsArchitecture()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->osArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsArchitecture(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->osArchitecture:Ljava/lang/String;

    return-void
.end method
