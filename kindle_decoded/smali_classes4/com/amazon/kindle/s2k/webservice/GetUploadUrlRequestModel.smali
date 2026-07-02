.class public Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;
.super Ljava/lang/Object;
.source "GetUploadUrlRequestModel.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private fileSize:J

.field private os:Ljava/lang/String;

.field private osArchitecture:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->fileSize:J

    return-wide v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsArchitecture()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->osArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->fileSize:J

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsArchitecture(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;->osArchitecture:Ljava/lang/String;

    return-void
.end method
