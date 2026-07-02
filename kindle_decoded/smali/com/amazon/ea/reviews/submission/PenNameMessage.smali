.class public Lcom/amazon/ea/reviews/submission/PenNameMessage;
.super Lcom/amazon/ea/messaging/JsonObjectMessage;
.source "PenNameMessage.java"


# static fields
.field private static final PEN_NAME_SUBMISSION_ENDPOINT:Ljava/lang/String; = "CommunityReviews.pennameSubmission"


# instance fields
.field private final penName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/ea/reviews/submission/PenNameMessage;->penName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "CommunityReviews.pennameSubmission"

    return-object v0
.end method

.method protected getJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "penName"

    .line 30
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/PenNameMessage;->penName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal problem trying to generate JSON"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
