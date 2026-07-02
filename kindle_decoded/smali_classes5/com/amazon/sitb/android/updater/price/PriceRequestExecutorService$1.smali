.class Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;
.super Ljava/lang/Object;
.source "PriceRequestExecutorService.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->execute(Ljava/lang/String;ILcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$responseHandler:Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;

.field final synthetic val$retagIdPrefix:I


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;Ljava/lang/String;ILcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->this$0:Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

    iput-object p2, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$asin:Ljava/lang/String;

    iput p3, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$retagIdPrefix:I

    iput-object p4, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$responseHandler:Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;

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

    .line 39
    invoke-virtual {p0}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-static {}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->access$100()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    const-string v1, "Glide weblab is dialed up?=%s"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->this$0:Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

    invoke-static {v4}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->access$000(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->this$0:Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

    invoke-static {v0}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->access$000(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->this$0:Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

    .line 51
    invoke-static {v0}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->access$200(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;)Lcom/amazon/sitb/android/IStoreActions;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$asin:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$retagIdPrefix:I

    invoke-interface {v0, v1, v3}, Lcom/amazon/sitb/android/IStoreActions;->prepareBuy(Ljava/lang/String;I)Lcom/amazon/sitb/android/BookPrice;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->this$0:Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

    invoke-static {v0}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->access$200(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;)Lcom/amazon/sitb/android/IStoreActions;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$asin:Ljava/lang/String;

    iget v3, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$retagIdPrefix:I

    invoke-interface {v0, v1, v3}, Lcom/amazon/sitb/android/IStoreActions;->kcpPrepareBuy(Ljava/lang/String;I)Lcom/amazon/sitb/android/BookPrice;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Lcom/amazon/sitb/android/BookPrice;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 53
    :goto_1
    iget-object v1, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$responseHandler:Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;

    invoke-interface {v1, v2}, Lcom/amazon/sitb/android/updater/RequestExecutorService$ResponseHandler;->responseReceived(Z)V

    if-eqz v2, :cond_2

    .line 55
    iget-object v1, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->this$0:Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;

    invoke-static {v1}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->access$300(Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    new-instance v2, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;

    iget-object v3, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$asin:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/amazon/sitb/android/event/PriceUpdatedEvent;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/BookPrice;)V

    invoke-static {v1, v2}, Lcom/amazon/sitb/android/utils/EventUtils;->publishExternalEvent(Lcom/amazon/kindle/krx/events/IMessageQueue;Lcom/amazon/kindle/krx/events/IEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService;->access$100()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not update price for asin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/sitb/android/updater/price/PriceRequestExecutorService$1;->val$asin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 43
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
