.class public Lcom/amazon/startactions/messaging/StartActionsMarkAsReadingJsonMessage;
.super Lcom/amazon/ea/messaging/JsonObjectMessage;
.source "StartActionsMarkAsReadingJsonMessage.java"


# static fields
.field private static final GOODREADS_MARK_AS_READING_TOPIC:Ljava/lang/String; = "Goodreads.StartActions.MarkAsReading"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_ASIN:Ljava/lang/String; = "asin"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final KEY_SHELF:Ljava/lang/String; = "shelf"

.field private static final KEY_TYPE:Ljava/lang/String; = "type"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final ODOT_ACTION:Ljava/lang/String; = "updateshelf"

.field private static final ODOT_TYPE:Ljava/lang/String; = "action"

.field private static final ODOT_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private message:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "action"

    .line 45
    invoke-direct {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;-><init>()V

    .line 43
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/amazon/startactions/messaging/StartActionsMarkAsReadingJsonMessage;->message:Lorg/json/JSONObject;

    .line 47
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "asin"

    .line 48
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "shelf"

    .line 49
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo p2, "updateshelf"

    .line 52
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "data"

    .line 53
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object p2, p0, Lcom/amazon/startactions/messaging/StartActionsMarkAsReadingJsonMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo v1, "version"

    const-string v2, "1.0"

    invoke-virtual {p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object p2, p0, Lcom/amazon/startactions/messaging/StartActionsMarkAsReadingJsonMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    invoke-virtual {p2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object p2, p0, Lcom/amazon/startactions/messaging/StartActionsMarkAsReadingJsonMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo v0, "payload"

    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 59
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "Internal problem trying to generate JSON"

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "Goodreads.StartActions.MarkAsReading"

    return-object v0
.end method

.method protected getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/startactions/messaging/StartActionsMarkAsReadingJsonMessage;->message:Lorg/json/JSONObject;

    return-object v0
.end method
