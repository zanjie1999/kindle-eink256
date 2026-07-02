.class public Lcom/amazon/kindle/s2k/webservice/GetDevicesController;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "GetDevicesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;
    }
.end annotation


# static fields
.field private static final DEVICE_CAPABILITIES_NODE:Ljava/lang/String; = "deviceCapabilities"

.field private static final DEVICE_NAME_NODE:Ljava/lang/String; = "deviceName"

.field private static final DEVICE_SERIAL_NUMBER_NODE:Ljava/lang/String; = "deviceSerialNumber"

.field private static final ENTRY_NODE:Ljava/lang/String; = "entry"

.field private static final KEY_NODE:Ljava/lang/String; = "key"

.field private static final MEMBER_NODE:Ljava/lang/String; = "member"

.field private static final OWNED_DEVICES_NODE:Ljava/lang/String; = "ownedDevices"

.field private static final RESPONSE_NODE:Ljava/lang/String; = "GetListOfOwnedDevicesResponse"

.field private static final STATUS_CODE_NODE:Ljava/lang/String; = "statusCode"

.field private static final TAG:Ljava/lang/String;

.field private static final VALUE_NODE:Ljava/lang/String; = "value"


# instance fields
.field private deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

.field private responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;)V
    .locals 0

    .line 182
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    .line 183
    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    return-void
.end method


# virtual methods
.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 204
    sget-object v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onElementEnd - received tagName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " content : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :try_start_0
    const-string v0, "GetListOfOwnedDevicesResponse"

    .line 206
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->setHasResults(Z)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "statusCode"

    .line 210
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->setStatusCode(I)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "member"

    .line 214
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->getConcreteKindleDeviceInstance()Lcom/amazon/kindle/s2k/KindleDevice;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 219
    iget-object v1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->addDevice(Lcom/amazon/kindle/s2k/KindleDevice;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "key"

    .line 222
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->setKey(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "value"

    .line 226
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 228
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WAN_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->setWanCapable(Z)V

    goto :goto_0

    .line 232
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI_CAPABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->setWifiCapable(Z)V

    goto :goto_0

    .line 236
    :cond_5
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-virtual {v0}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PDF_CONTENT_ENABLED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->setPdfCapable(Z)V

    goto :goto_0

    :cond_6
    const-string v0, "deviceName"

    .line 241
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 243
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->setDeviceName(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const-string v0, "deviceSerialNumber"

    .line 245
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 247
    iget-object v0, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;->setDeviceSerialNumber(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 252
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 253
    sget-object v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->TAG:Ljava/lang/String;

    const/16 v1, 0x10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onElementEnd - Unable to parse node tagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2

    .line 194
    sget-object p2, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onElementStart - received tagName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p2, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    const-string p2, "member"

    .line 195
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 197
    new-instance p1, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;-><init>(Lcom/amazon/kindle/s2k/webservice/GetDevicesController$1;)V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/webservice/GetDevicesController;->deviceLoader:Lcom/amazon/kindle/s2k/webservice/GetDevicesController$KindleDeviceLoader;

    :cond_0
    return-void
.end method
