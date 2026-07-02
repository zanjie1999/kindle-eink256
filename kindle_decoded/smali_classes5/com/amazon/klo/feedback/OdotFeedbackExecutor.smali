.class Lcom/amazon/klo/feedback/OdotFeedbackExecutor;
.super Ljava/lang/Object;
.source "OdotFeedbackExecutor.java"

# interfaces
.implements Lcom/amazon/kindle/krx/application/IAsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/application/IAsyncTask<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final ODOT_TOPIC:Ljava/lang/String; = "KEDU.KLO.Feedback"

.field private static final TAG:Ljava/lang/String; = "com.amazon.klo.feedback.OdotFeedbackExecutor"


# instance fields
.field private final message:Lorg/json/JSONObject;

.field private final messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/messaging/IMessagingManager;Lorg/json/JSONObject;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    .line 23
    iput-object p2, p0, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;->message:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->isOdotSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 31
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v2, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;->TAG:Ljava/lang/String;

    const-string v3, "Cannot send feedback odot message; Odot is not supported"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    iget-object v2, p0, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;->message:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    new-array v1, v1, [Lcom/amazon/dcp/messaging/DeliveryOption;

    const-string v3, "KEDU.KLO.Feedback"

    invoke-interface {v0, v3, v2, v1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V

    const/4 v0, 0x1

    .line 36
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

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

    .line 12
    invoke-virtual {p0}, Lcom/amazon/klo/feedback/OdotFeedbackExecutor;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
