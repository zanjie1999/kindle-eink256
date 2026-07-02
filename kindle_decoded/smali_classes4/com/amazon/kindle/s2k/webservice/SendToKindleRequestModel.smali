.class public Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;
.super Ljava/lang/Object;
.source "SendToKindleRequestModel.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private archive:Z

.field private author:Ljava/lang/String;

.field private crc32:J

.field private deliveryMechanism:Ljava/lang/String;

.field private inputFormat:Ljava/lang/String;

.field private os:Ljava/lang/String;

.field private osArchitecture:Ljava/lang/String;

.field private outputFormat:Ljava/lang/String;

.field private stkToken:Ljava/lang/String;

.field private targetDevices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->targetDevices:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->archive:Z

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->author:Ljava/lang/String;

    return-object v0
.end method

.method public getCrc32()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->crc32:J

    return-wide v0
.end method

.method public getDeliveryMechanism()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->deliveryMechanism:Ljava/lang/String;

    return-object v0
.end method

.method public getInputFormat()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->inputFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getOs()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->os:Ljava/lang/String;

    return-object v0
.end method

.method public getOsArchitecture()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->osArchitecture:Ljava/lang/String;

    return-object v0
.end method

.method public getOutputFormat()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->outputFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getStkToken()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->stkToken:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetDevices()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->targetDevices:Ljava/util/Vector;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isArchive()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->archive:Z

    return v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->appName:Ljava/lang/String;

    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public setArchive(Z)V
    .locals 0

    .line 223
    iput-boolean p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->archive:Z

    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->author:Ljava/lang/String;

    return-void
.end method

.method public setCrc32(J)V
    .locals 0

    .line 181
    iput-wide p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->crc32:J

    return-void
.end method

.method public setDeliveryMechanism(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->deliveryMechanism:Ljava/lang/String;

    return-void
.end method

.method public setInputFormat(Ljava/lang/String;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->inputFormat:Ljava/lang/String;

    return-void
.end method

.method public setOs(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->os:Ljava/lang/String;

    return-void
.end method

.method public setOsArchitecture(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->osArchitecture:Ljava/lang/String;

    return-void
.end method

.method public setOutputFormat(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->outputFormat:Ljava/lang/String;

    return-void
.end method

.method public setStkToken(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->stkToken:Ljava/lang/String;

    return-void
.end method

.method public setTargetDevices(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->targetDevices:Ljava/util/Vector;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->title:Ljava/lang/String;

    return-void
.end method
