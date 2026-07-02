.class Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->deleteTopicAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

.field final synthetic val$deleteTopicRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;)V
    .locals 0

    .line 1089
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->val$deleteTopicRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;

    iput-object p3, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1089
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1093
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->val$deleteTopicRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->deleteTopic(Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1098
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->val$deleteTopicRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/DeleteTopicRequest;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;->onSuccess(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V

    return-object v2

    :catch_0
    move-exception v0

    .line 1095
    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$18;->val$asyncHandler:Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;->onError(Ljava/lang/Exception;)V

    .line 1096
    throw v0
.end method
