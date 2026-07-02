.class Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->listTopicsAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

.field final synthetic val$listTopicsRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .line 2006
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->val$listTopicsRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;

    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2010
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->val$listTopicsRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->listTopics(Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2015
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    iget-object v2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->val$listTopicsRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsRequest;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 2012
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 2013
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2006
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$40;->call()Lcom/amazon/kindle/com/amazonaws/services/sns/model/ListTopicsResult;

    move-result-object v0

    return-object v0
.end method
