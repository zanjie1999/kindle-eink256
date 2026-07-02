.class final Lcom/amazon/ea/util/MessageSender$1;
.super Ljava/lang/Object;
.source "MessageSender.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$callback:Lcom/amazon/ea/util/MessageSender$Callback;

.field final synthetic val$message:Lcom/amazon/ea/messaging/IMessage;


# direct methods
.method constructor <init>(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/ea/util/MessageSender$1;->val$message:Lcom/amazon/ea/messaging/IMessage;

    iput-object p2, p0, Lcom/amazon/ea/util/MessageSender$1;->val$callback:Lcom/amazon/ea/util/MessageSender$Callback;

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

    .line 31
    invoke-virtual {p0}, Lcom/amazon/ea/util/MessageSender$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .line 35
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 36
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getMessagingManager()Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    move-result-object v1

    .line 38
    invoke-interface {v1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->isOdotSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/amazon/ea/util/MessageSender$1;->val$message:Lcom/amazon/ea/messaging/IMessage;

    invoke-interface {v2}, Lcom/amazon/ea/messaging/IMessage;->getPayload()[B

    move-result-object v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/amazon/ea/util/MessageSender$1;->val$message:Lcom/amazon/ea/messaging/IMessage;

    invoke-interface {v2}, Lcom/amazon/ea/messaging/IMessage;->getEndpoint()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ea/util/MessageSender$1;->val$message:Lcom/amazon/ea/messaging/IMessage;

    invoke-interface {v3}, Lcom/amazon/ea/messaging/IMessage;->getPayload()[B

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Lcom/amazon/dcp/messaging/DeliveryOption;

    invoke-interface {v1, v2, v3, v4}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/util/MessageSender$1;->val$message:Lcom/amazon/ea/messaging/IMessage;

    invoke-interface {v0}, Lcom/amazon/ea/messaging/IMessage;->getEndpoint()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/util/AjaxMessagingManager;->post(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 45
    :goto_0
    iget-object v1, p0, Lcom/amazon/ea/util/MessageSender$1;->val$callback:Lcom/amazon/ea/util/MessageSender$Callback;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_1

    .line 47
    :try_start_1
    iget-object v1, p0, Lcom/amazon/ea/util/MessageSender$1;->val$callback:Lcom/amazon/ea/util/MessageSender$Callback;

    invoke-interface {v1, v0}, Lcom/amazon/ea/util/MessageSender$Callback;->success(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 49
    :try_start_2
    invoke-static {}, Lcom/amazon/ea/util/MessageSender;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/amazon/ea/util/MessageSender$1;->val$callback:Lcom/amazon/ea/util/MessageSender$Callback;

    if-eqz v1, :cond_1

    .line 54
    invoke-interface {v1, v0}, Lcom/amazon/ea/util/MessageSender$Callback;->failure(Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
