.class Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;
.super Ljava/lang/Object;
.source "IStatusTrackerShimWebRequest.java"

# interfaces
.implements Lcom/amazon/kindle/webservices/IResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->createResponseHandlerShim(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

.field final synthetic val$proxyHandler:Lcom/amazon/kindle/webservices/IResponseHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;Lcom/amazon/kindle/webservices/IResponseHandler;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->val$proxyHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->val$proxyHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpResponseProperties()Lcom/amazon/kindle/webservices/HttpResponseProperties;

    move-result-object v0

    return-object v0
.end method

.method public getHttpStatusCode()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->val$proxyHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IResponseHandler;->getHttpStatusCode()I

    move-result v0

    return v0
.end method

.method public onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->val$proxyHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IResponseHandler;->onHttpResponseProperties(Lcom/amazon/kindle/webservices/HttpResponseProperties;)V

    .line 116
    invoke-virtual {p1}, Lcom/amazon/kindle/webservices/HttpResponseProperties;->getContentLength()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-static {v0}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->access$000(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;)Lcom/amazon/kindle/services/download/IStatusTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->this$0:Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;

    invoke-static {v0}, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;->access$000(Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest;)Lcom/amazon/kindle/services/download/IStatusTracker;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/services/download/IStatusTracker;->setMaxProgress(J)V

    :cond_0
    return-void
.end method

.method public onHttpStatusCodeReceived(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->val$proxyHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IResponseHandler;->onHttpStatusCodeReceived(I)V

    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/webservices/ResponseHandlerException;
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->val$proxyHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/webservices/IResponseHandler;->onInputStream(Ljava/io/InputStream;)V

    return-void
.end method

.method public onRequestCanceled()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/webservices/IStatusTrackerShimWebRequest$2;->val$proxyHandler:Lcom/amazon/kindle/webservices/IResponseHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/webservices/IResponseHandler;->onRequestCanceled()V

    return-void
.end method
