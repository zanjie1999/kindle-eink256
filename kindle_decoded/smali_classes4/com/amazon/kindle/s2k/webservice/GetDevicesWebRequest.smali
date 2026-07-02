.class public Lcom/amazon/kindle/s2k/webservice/GetDevicesWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "GetDevicesWebRequest.java"


# static fields
.field private static final NUM_RETRIES:I = 0x1

.field private static final PATH:Ljava/lang/String; = "/GetListOfOwnedDevices"

.field private static final TAG:Ljava/lang/String;

.field private static final TIMEOUT:I = 0x7530


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesWebRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;)V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kindle/s2k/STKUtils;->getSendToKindleServiceEndpoint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/GetListOfOwnedDevices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 v0, 0x1

    .line 26
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    const/16 v1, 0x7530

    .line 27
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 28
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 29
    sget-object v0, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->URGENT:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 31
    new-instance v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;-><init>(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;)V

    .line 32
    invoke-virtual {p3, v0}, Lcom/amazon/kindle/webservices/XmlResponseHandler;->setContentHandler(Lcom/amazon/foundation/internal/DefaultContentHandler;)V

    .line 33
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 35
    invoke-direct {p0, p2}, Lcom/amazon/kindle/s2k/webservice/GetDevicesWebRequest;->constructPOSTXML(Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;)Ljava/lang/String;

    move-result-object p1

    .line 36
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method private constructPOSTXML(Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;)Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<GetListOfOwnedDevicesRequest>"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<ClientInfo>"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<appName>"

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->getAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</appName>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<appVersion>"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</appVersion>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<os>"

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->getOs()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "</os>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "<osArchitecture>"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->getOsArchitecture()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</osArchitecture>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</ClientInfo>"

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "</GetListOfOwnedDevicesRequest>"

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
