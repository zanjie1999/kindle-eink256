.class Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$2;
.super Lcom/amazon/kindle/s2k/webservice/GetDevicesWebRequest;
.source "SendToKindleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;)V
    .locals 0

    .line 1231
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$2;->this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kindle/s2k/webservice/GetDevicesWebRequest;-><init>(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;Lcom/amazon/kindle/s2k/webservice/GetDevicesRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 4

    .line 1235
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    .line 1236
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 1237
    :goto_0
    sget-object v2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    if-ne v1, v2, :cond_1

    .line 1239
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$2;->this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->access$2200(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;)Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->access$2300(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;)V

    goto :goto_1

    .line 1243
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$2;->this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;

    invoke-static {v1}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->access$2200(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;)Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;

    move-result-object v2

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->access$2400(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :goto_1
    return v0
.end method
