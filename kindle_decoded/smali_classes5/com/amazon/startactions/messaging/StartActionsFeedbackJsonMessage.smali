.class public Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;
.super Lcom/amazon/ea/messaging/JsonObjectMessage;
.source "StartActionsFeedbackJsonMessage.java"


# static fields
.field private static final STARTACTIONS_FEEDBACK_SUBMISSION_ENDPOINT:Ljava/lang/String; = "KindleStartactions.feedbackSubmission"


# instance fields
.field private message:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;-><init>()V

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    :try_start_0
    const-string v1, "isUseful"

    .line 26
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 27
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    const-string v0, "comments"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    const-string p2, "asin"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    const-string p2, "embeddedId"

    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo p2, "orientation"

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    const-string p2, "contentType"

    invoke-virtual {p1, p2, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo p2, "widgets"

    new-instance p3, Lorg/json/JSONArray;

    invoke-direct {p3, p7}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    const-string/jumbo p2, "timestamp"

    invoke-virtual {p8}, Ljava/util/Date;->getTime()J

    move-result-wide p3

    invoke-virtual {p1, p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 34
    iget-object p1, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    const-string p2, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 36
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string p3, "Internal problem trying to generate JSON"

    invoke-direct {p2, p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "KindleStartactions.feedbackSubmission"

    return-object v0
.end method

.method public getJsonObject()Lorg/json/JSONObject;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/startactions/messaging/StartActionsFeedbackJsonMessage;->message:Lorg/json/JSONObject;

    return-object v0
.end method
