.class Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$3;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->checkIfPhoneNumberIsOptedOutAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$checkIfPhoneNumberIsOptedOutRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$3;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$3;->val$checkIfPhoneNumberIsOptedOutRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 381
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$3;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$3;->val$checkIfPhoneNumberIsOptedOutRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->checkIfPhoneNumberIsOptedOut(Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 379
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$3;->call()Lcom/amazon/kindle/com/amazonaws/services/sns/model/CheckIfPhoneNumberIsOptedOutResult;

    move-result-object v0

    return-object v0
.end method
