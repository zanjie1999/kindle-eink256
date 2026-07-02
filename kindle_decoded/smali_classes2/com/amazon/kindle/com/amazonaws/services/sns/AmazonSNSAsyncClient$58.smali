.class Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->subscribeAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

.field final synthetic val$subscribeRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .line 2777
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->val$subscribeRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2781
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->val$subscribeRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->subscribe(Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2786
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->val$subscribeRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeRequest;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 2783
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 2784
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2777
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$58;->call()Lcom/amazon/kindle/com/amazonaws/services/sns/model/SubscribeResult;

    move-result-object v0

    return-object v0
.end method
