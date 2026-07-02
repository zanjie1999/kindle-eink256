.class public Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;
.super Lcom/amazon/ea/messaging/JsonObjectMessage;
.source "StartActionsDynamicButtonWidgetJsonMessage.java"


# instance fields
.field private final endpoint:Ljava/lang/String;

.field private final message:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;->endpoint:Ljava/lang/String;

    .line 55
    :try_start_0
    iput-object p7, p0, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;->message:Lorg/json/JSONObject;

    const-string p1, "asin"

    .line 57
    invoke-virtual {p7, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;->message:Lorg/json/JSONObject;

    const-string p3, "embeddedId"

    invoke-virtual {p1, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;->message:Lorg/json/JSONObject;

    const-string p3, "contentType"

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo p3, "timestamp"

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p4

    invoke-virtual {p1, p3, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 61
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo p2, "refTag"

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 63
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Internal problem trying to generate JSON"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method protected getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;->message:Lorg/json/JSONObject;

    return-object v0
.end method
