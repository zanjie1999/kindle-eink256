.class public Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;
.super Lcom/amazon/ea/messaging/JsonObjectMessage;
.source "PersonalizationRatingMessage.java"


# static fields
.field private static final DATE_FORMAT_FOR_RATING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field private static final PERSONALIZATION_RATING_SUBMISSION_ENDPOINT:Ljava/lang/String; = "ReadingExperience.EndActions.Rating"


# instance fields
.field private final rating:Lcom/amazon/ea/reviews/data/Rating;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/reviews/data/Rating;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;->rating:Lcom/amazon/ea/reviews/data/Rating;

    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "ReadingExperience.EndActions.Rating"

    return-object v0
.end method

.method protected getJsonObject()Lorg/json/JSONObject;
    .locals 6

    .line 37
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 39
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "asin"

    .line 42
    iget-object v4, p0, Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-virtual {v4}, Lcom/amazon/ea/reviews/data/Rating;->getAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v3, "rating"

    .line 43
    iget-object v4, p0, Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-virtual {v4}, Lcom/amazon/ea/reviews/data/Rating;->getValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v3, "timestamp"

    .line 44
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/amazon/ea/reviews/submission/PersonalizationRatingMessage;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-virtual {v5}, Lcom/amazon/ea/reviews/data/Rating;->getTimeStamp()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    const-string/jumbo v0, "rate"

    .line 48
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    .line 51
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal problem trying to generate JSON"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
