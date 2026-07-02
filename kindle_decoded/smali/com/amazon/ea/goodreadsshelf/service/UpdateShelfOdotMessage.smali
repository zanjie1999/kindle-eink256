.class Lcom/amazon/ea/goodreadsshelf/service/UpdateShelfOdotMessage;
.super Lcom/amazon/ea/messaging/JsonObjectMessage;
.source "UpdateShelfOdotMessage.java"


# static fields
.field private static final DATA_KEY_ASIN:Ljava/lang/String; = "asin"

.field private static final DATA_KEY_SHELF:Ljava/lang/String; = "shelf"

.field private static final DATA_KEY_SHELVING_TIME:Ljava/lang/String; = "shelving_time"

.field private static final GOODREADS_MARK_AS_READING_TOPIC:Ljava/lang/String; = "Goodreads.StartActions.MarkAsReading"

.field private static final MESSAGE_KEY_PAYLOAD:Ljava/lang/String; = "payload"

.field private static final MESSAGE_KEY_TYPE:Ljava/lang/String; = "type"

.field private static final MESSAGE_KEY_VERSION:Ljava/lang/String; = "version"

.field private static final ODOT_ACTION:Ljava/lang/String; = "autoshelve"

.field private static final ODOT_TYPE:Ljava/lang/String; = "action"

.field private static final ODOT_VERSION:Ljava/lang/String; = "1.0"

.field private static final PAYLOAD_KEY_ACTION:Ljava/lang/String; = "action"

.field private static final PAYLOAD_KEY_DATA:Ljava/lang/String; = "data"


# instance fields
.field private message:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "action"

    .line 58
    invoke-direct {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;-><init>()V

    .line 56
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/UpdateShelfOdotMessage;->message:Lorg/json/JSONObject;

    .line 60
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "asin"

    .line 61
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "shelf"

    .line 62
    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo p1, "shelving_time"

    .line 63
    invoke-virtual {v1, p1, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    if-eqz p5, :cond_0

    .line 64
    invoke-interface {p5}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 70
    :cond_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string p2, "autoshelve"

    .line 71
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "data"

    .line 72
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/service/UpdateShelfOdotMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo p3, "version"

    const-string p4, "1.0"

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/service/UpdateShelfOdotMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo p3, "type"

    invoke-virtual {p2, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    iget-object p2, p0, Lcom/amazon/ea/goodreadsshelf/service/UpdateShelfOdotMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo p3, "payload"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 78
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Internal problem trying to generate JSON"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

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

    .line 90
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/UpdateShelfOdotMessage;->message:Lorg/json/JSONObject;

    return-object v0
.end method
