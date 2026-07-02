.class public Lcom/amazon/xray/model/message/XrayCustomerFeedback;
.super Ljava/lang/Object;
.source "XrayCustomerFeedback.java"

# interfaces
.implements Lcom/amazon/xray/plugin/util/MessagingUtil$Message;


# static fields
.field private static final KEY_ASIN:Ljava/lang/String; = "asin"

.field private static final KEY_COMMENTS:Ljava/lang/String; = "comments"

.field private static final KEY_EMBEDDED_ID:Ljava/lang/String; = "embeddedId"

.field private static final KEY_END_POSITION:Ljava/lang/String; = "endPosition"

.field private static final KEY_ENTITY_LABEL:Ljava/lang/String; = "entityLabel"

.field private static final KEY_ERROR_TYPE:Ljava/lang/String; = "errorType"

.field private static final KEY_HELPFUL:Ljava/lang/String; = "helpful"

.field private static final KEY_START_POSITION:Ljava/lang/String; = "startPosition"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final XRAY_FEEDBACK_TOPIC:Ljava/lang/String; = "XrayBook.Customer.Feedback"

.field private static final XRAY_FEEDBACK_VERSION:Ljava/lang/String; = "2.0"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final comments:Ljava/lang/String;

.field private final embeddedId:Ljava/lang/String;

.field private final endPosition:Ljava/lang/Integer;

.field private final entityLabel:Ljava/lang/String;

.field private final errorType:Ljava/lang/String;

.field private final helpful:Z

.field private final startPosition:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->asin:Ljava/lang/String;

    .line 58
    iput-object p2, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->embeddedId:Ljava/lang/String;

    .line 59
    iput-boolean p3, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->helpful:Z

    .line 60
    iput-object p4, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->entityLabel:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->startPosition:Ljava/lang/Integer;

    .line 62
    iput-object p6, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->endPosition:Ljava/lang/Integer;

    .line 63
    iput-object p7, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->errorType:Ljava/lang/String;

    .line 64
    iput-object p8, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->comments:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPayload()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 74
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "version"

    const-string v2, "2.0"

    .line 75
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    iget-object v1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->asin:Ljava/lang/String;

    const-string v2, "asin"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    iget-object v1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->embeddedId:Ljava/lang/String;

    const-string v2, "embeddedId"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-boolean v1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->helpful:Z

    const-string v2, "helpful"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 79
    iget-object v1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->entityLabel:Ljava/lang/String;

    const-string v2, "entityLabel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    iget-object v1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->startPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    const-string v2, "startPosition"

    .line 83
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->endPosition:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    const-string v2, "endPosition"

    .line 87
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->errorType:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v2, "errorType"

    .line 91
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_2
    iget-object v1, p0, Lcom/amazon/xray/model/message/XrayCustomerFeedback;->comments:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v2, "comments"

    .line 95
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    const-string v0, "XrayBook.Customer.Feedback"

    return-object v0
.end method
