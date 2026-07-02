.class Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;
.super Ljava/lang/Object;
.source "AsyncAmazonWebserviceCall.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->buildAsyncCallback(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

.field final synthetic val$callback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->this$0:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->val$callback:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBodyChunkReceived([BI)V
    .locals 2

    .line 45
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$1;-><init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;[BI)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ExecutorHelpers;->postAndWait(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHeadersReceived(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V
    .locals 2

    .line 58
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$2;-><init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseHeaders;)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ExecutorHelpers;->postAndWait(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onNetworkError()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->this$0:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->access$100(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;)Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->stop()V

    .line 73
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$3;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$3;-><init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ExecutorHelpers;->postAndWait(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(II)V
    .locals 2

    .line 86
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$4;-><init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;II)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ExecutorHelpers;->postAndWait(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onRequestComplete()V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;->this$0:Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->access$100(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;)Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/metrics/MetricsTimer;->stop()V

    .line 101
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;->access$000()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$5;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1$5;-><init>(Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall$1;)V

    invoke-static {v0, v1}, Lcom/amazon/whispersync/dcp/framework/ExecutorHelpers;->postAndWait(Ljava/util/concurrent/ExecutorService;Ljava/lang/Runnable;)V

    return-void
.end method
