.class Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;
.super Lcom/amazon/kindle/s2k/webservice/GetUploadUrlWebRequest;
.source "SendToKindleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->callGetUploadUrl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

.field final synthetic val$responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;->this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    iput-object p5, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;->val$responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/kindle/s2k/webservice/GetUploadUrlWebRequest;-><init>(Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;Lcom/amazon/kindle/s2k/webservice/GetUploadUrlRequestModel;Lcom/amazon/kindle/webservices/XmlResponseHandler;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 4

    .line 232
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->onRequestComplete()Z

    move-result v0

    .line 233
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    .line 234
    :goto_0
    sget-object v2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    if-ne v1, v2, :cond_1

    .line 236
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;->this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;->val$responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->onGetUploadUrlSuccess(Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;)V

    goto :goto_1

    .line 240
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;->this$1:Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;

    iget-object v2, p0, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument$5;->val$responseModel:Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kindle/s2k/SendToKindleService$SendDocument;->onGetUploadUrlError(Lcom/amazon/kindle/s2k/webservice/GetUploadUrlResponseModel;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :goto_1
    return v0
.end method
