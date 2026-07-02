.class public Lcom/amazon/kindle/s2k/webservice/SendToKindleWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "SendToKindleWebRequest.java"


# static fields
.field private static final NUM_RETRIES:I = 0x1

.field private static final PATH:Ljava/lang/String; = "/SendToKindle"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/amazon/kindle/s2k/webservice/SendToKindleWebRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/webservice/SendToKindleWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kindle/s2k/STKUtils;->getSendToKindleServiceEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/SendToKindle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/16 v1, 0x7530

    .line 28
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 29
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 30
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 32
    new-instance v0, Lcom/amazon/kindle/s2k/webservice/SendToKindleController;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleController;-><init>(Lcom/amazon/kindle/s2k/webservice/SendToKindleResponseModel;)V

    .line 33
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/webservices/XmlResponseHandler;->setContentHandler(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    .line 34
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 36
    invoke-direct {p0, p2}, Lcom/amazon/kindle/s2k/webservice/SendToKindleWebRequest;->constructPOSTXML(Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;)Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method private constructPOSTXML(Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;)Ljava/lang/String;
    .locals 4

    .line 68
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<SendToKindleRequest>"

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<archive>"

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->isArchive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, "</archive>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<ClientInfo>"

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<appName>"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</appName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<appVersion>"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</appVersion>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<os>"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getOs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</os>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<osArchitecture>"

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getOsArchitecture()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</osArchitecture>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</ClientInfo>"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<deliveryMechanism>"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getDeliveryMechanism()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</deliveryMechanism>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<DocumentMetadata>"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<author>"

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</author>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<crc32>"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getCrc32()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "</crc32>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<inputFormat>"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getInputFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</inputFormat>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<title>"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</DocumentMetadata>"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<outputFormat>"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getOutputFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</outputFormat>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<stkToken>"

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getStkToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</stkToken>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getTargetDevices()Ljava/util/Vector;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getTargetDevices()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "<targetDevices>"

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    .line 89
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getTargetDevices()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v2, "<entry>"

    .line 91
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/SendToKindleRequestModel;->getTargetDevices()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "</entry>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string p1, "</targetDevices>"

    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string p1, "</SendToKindleRequest>"

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    sget-object p1, Lcom/amazon/kindle/s2k/webservice/SendToKindleWebRequest;->TAG:Ljava/lang/String;

    const/4 v1, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "constructPOSTXML : Request is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
