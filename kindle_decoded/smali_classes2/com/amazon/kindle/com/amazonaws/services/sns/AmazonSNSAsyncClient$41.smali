.class Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$41;
.super Ljava/lang/Object;
.source "AmazonSNSAsyncClient.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;->optInPhoneNumberAsync(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

.field final synthetic val$optInPhoneNumberRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)V
    .locals 0

    .line 2050
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$41;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iput-object p2, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$41;->val$optInPhoneNumberRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2052
    iget-object v0, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$41;->this$0:Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient;

    iget-object v1, p0, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$41;->val$optInPhoneNumberRequest:Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSClient;->optInPhoneNumber(Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberRequest;)Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;

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

    .line 2050
    invoke-virtual {p0}, Lcom/amazon/kindle/com/amazonaws/services/sns/AmazonSNSAsyncClient$41;->call()Lcom/amazon/kindle/com/amazonaws/services/sns/model/OptInPhoneNumberResult;

    move-result-object v0

    return-object v0
.end method
