.class Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetListOfOwnedDevices"
.end annotation


# instance fields
.field private handler:Lcom/amazon/kindle/webservices/XmlResponseHandler;

.field private requestModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;

.field private responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

.field final synthetic this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V
    .locals 0

    .line 1197
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1201
    new-instance p1, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$1;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;)V

    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->handler:Lcom/amazon/kindle/webservices/XmlResponseHandler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;Lcom/amazon/kindle/s2k/SendToKindleActivity$1;)V
    .locals 0

    .line 1197
    invoke-direct {p0, p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;)Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;
    .locals 0

    .line 1197
    iget-object p0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;)V
    .locals 0

    .line 1197
    invoke-direct {p0, p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->onGetDevicesSuccess(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 0

    .line 1197
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->onGetDevicesError(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void
.end method

.method private onGetDevicesError(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 3

    .line 1300
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$2500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$2500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1305
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetOwnedListOfDevices API call Failed!! - statusCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->getStatusCode()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x10

    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1306
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetOwnedListOfDevices API call Failed!! - errorState : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1309
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object p1

    const-string v0, "NumOfDevices"

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->getInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 1313
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const-string v0, "SendToKindleActivity"

    if-eq p2, p1, :cond_4

    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->DEVICE_NETWORK_CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p2, p1, :cond_1

    goto :goto_0

    .line 1320
    :cond_1
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p2, p1, :cond_2

    .line 1322
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/s2k/R$string;->error_title_stkserver:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    .line 1323
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/s2k/R$string;->error_message_stkserver:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1322
    invoke-virtual {p1, p2, v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "ServerError"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto :goto_1

    .line 1327
    :cond_2
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->UNKNOWN:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p2, p1, :cond_3

    .line 1329
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    .line 1330
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/s2k/R$string;->error_message_unknown:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1329
    invoke-virtual {p1, p2, v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "InternalError"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    goto :goto_1

    .line 1336
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/s2k/R$string;->error_title_unknown:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    .line 1337
    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/s2k/R$string;->error_message_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1336
    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1315
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/s2k/R$string;->error_title_connection:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    .line 1316
    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/s2k/R$string;->error_message_connection:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1315
    invoke-virtual {p1, p2, v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->showAlertMsg(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    const-string v1, "NetworkError"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private onGetDevicesSuccess(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;)V
    .locals 6

    .line 1258
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$2500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1260
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$2500(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 1263
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetOwnedListOfDevices API call succeeded - statusCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->getStatusCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetOwnedListOfDevices API call - numDevices : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->getDeviceList()Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1265
    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;->getDeviceList()Ljava/util/Vector;

    move-result-object p1

    .line 1266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Number of devices received from the GetListOfOwnedDevices call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    .line 1267
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nDevice["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1271
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceName : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v1}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1272
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "deviceSerialNumber : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v1}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isPdfCapable : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v1}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsPdfCapable()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isWanCapable : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v1}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsWanCapable()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1275
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isWifiCapable : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v1}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsWifiCapable()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1277
    invoke-static {}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Devices: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 1279
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Device["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "].deviceName"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v5}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1280
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "].deviceSerialNumber"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v5}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1281
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "].isPdfCapable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v5}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsPdfCapable()Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 1282
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "].isWanCapable"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v5}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsWanCapable()Z

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 1283
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "].isWifiCapable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v4}, Lcom/amazon/kindle/s2k/KindleDevice;->getIsWifiCapable()Z

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putBoolean(Ljava/lang/String;Z)Z

    .line 1284
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1200(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Lcom/amazon/kindle/s2k/SendToKindlePreferences;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    const-string v3, "NumOfDevices"

    invoke-virtual {v1, v3, v0}, Lcom/amazon/kindle/s2k/SendToKindlePreferences;->putInt(Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1286
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {p1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$2600(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$3;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$3;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1222
    new-instance v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;

    invoke-direct {v0}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->requestModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;

    const-string v1, "S2KAndroid"

    .line 1223
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->setAppName(Ljava/lang/String;)V

    .line 1224
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->requestModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$1900(Lcom/amazon/kindle/s2k/SendToKindleActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->setAppVersion(Ljava/lang/String;)V

    .line 1225
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->requestModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Android_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->setOs(Ljava/lang/String;)V

    .line 1226
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->requestModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;

    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;->setOsArchitecture(Ljava/lang/String;)V

    .line 1228
    new-instance v0, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    invoke-direct {v0}, Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    .line 1230
    new-instance v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$2;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->responseModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->requestModel:Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;

    iget-object v3, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->handler:Lcom/amazon/kindle/webservices/XmlResponseHandler;

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$2;-><init>(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;)V

    .line 1250
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
