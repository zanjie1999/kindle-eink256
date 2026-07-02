.class public Lcom/amazon/klo/todo/OdotMessageExecutor;
.super Ljava/lang/Object;
.source "OdotMessageExecutor.java"

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
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.klo.todo.OdotMessageExecutor"

.field private static final ODOT_FIELD_ASIN:Ljava/lang/String; = "asin"

.field private static final ODOT_FIELD_FILENAME:Ljava/lang/String; = "filename"

.field private static final ODOT_FIELD_GUID:Ljava/lang/String; = "guid"

.field private static final ODOT_FIELD_URL:Ljava/lang/String; = "url"

.field private static final ODOT_FIELD_VERSION:Ljava/lang/String; = "version"

.field private static final ODOT_TOPIC:Ljava/lang/String; = "ACX.KLO.ASC.version"


# instance fields
.field private asin:Ljava/lang/String;

.field private filename:Ljava/lang/String;

.field private guid:Ljava/lang/String;

.field private messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

.field private url:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/messaging/IMessagingManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    .line 57
    iput-object p2, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->asin:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->guid:Ljava/lang/String;

    .line 59
    iput-object p4, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->version:Ljava/lang/String;

    .line 60
    iput-object p5, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->filename:Ljava/lang/String;

    .line 61
    iput-object p6, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->url:Ljava/lang/String;

    return-void
.end method

.method private buildOdotMessage()Lorg/json/JSONObject;
    .locals 3

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "url"

    .line 90
    iget-object v2, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "filename"

    .line 91
    iget-object v2, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->filename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object v1, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->asin:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "asin"

    .line 94
    iget-object v2, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->asin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_0
    iget-object v1, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->guid:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "guid"

    .line 98
    iget-object v2, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->guid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    :cond_1
    iget-object v1, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->version:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "version"

    .line 102
    iget-object v2, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->version:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object v0

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal problem trying to generate JSON"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->isOdotSupported()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 69
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v2, Lcom/amazon/klo/todo/OdotMessageExecutor;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Cannot send sidecar odot message, Odot is not supported"

    invoke-interface {v0, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/amazon/klo/todo/OdotMessageExecutor;->buildOdotMessage()Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    iget-object v2, p0, Lcom/amazon/klo/todo/OdotMessageExecutor;->messagingManager:Lcom/amazon/kindle/krx/messaging/IMessagingManager;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    new-array v1, v1, [Lcom/amazon/dcp/messaging/DeliveryOption;

    const-string v3, "ACX.KLO.ASC.version"

    invoke-interface {v2, v3, v0, v1}, Lcom/amazon/kindle/krx/messaging/IMessagingManager;->send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V

    const/4 v0, 0x1

    .line 76
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

    .line 14
    invoke-virtual {p0}, Lcom/amazon/klo/todo/OdotMessageExecutor;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;->MEDIUM:Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;

    return-object v0
.end method
