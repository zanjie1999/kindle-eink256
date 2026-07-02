.class public Lcom/amazon/xray/model/message/FeedbackMessage;
.super Ljava/lang/Object;
.source "FeedbackMessage.java"

# interfaces
.implements Lcom/amazon/xray/plugin/util/MessagingUtil$Message;


# static fields
.field private static final KEY_ASIN:Ljava/lang/String; = "asin"

.field private static final KEY_COMMENTS:Ljava/lang/String; = "comments"

.field private static final KEY_EMBEDDED_ID:Ljava/lang/String; = "embeddedId"

.field private static final KEY_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static final XRAY_FEEDBACK_TOPIC:Ljava/lang/String; = "XrayBook.FeedbackSubmission"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final comments:Ljava/lang/String;

.field private final embeddedId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/amazon/xray/model/message/FeedbackMessage;->asin:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/amazon/xray/model/message/FeedbackMessage;->embeddedId:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/amazon/xray/model/message/FeedbackMessage;->comments:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 54
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    iget-object v1, p0, Lcom/amazon/xray/model/message/FeedbackMessage;->asin:Ljava/lang/String;

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    iget-object v1, p0, Lcom/amazon/xray/model/message/FeedbackMessage;->embeddedId:Ljava/lang/String;

    const-string v2, "embeddedId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    iget-object v1, p0, Lcom/amazon/xray/model/message/FeedbackMessage;->comments:Ljava/lang/String;

    const-string v2, "comments"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    const-string v0, "XrayBook.FeedbackSubmission"

    return-object v0
.end method
