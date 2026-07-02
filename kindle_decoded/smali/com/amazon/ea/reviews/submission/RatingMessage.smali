.class public Lcom/amazon/ea/reviews/submission/RatingMessage;
.super Lcom/amazon/ea/messaging/JsonObjectMessage;
.source "RatingMessage.java"


# static fields
.field private static final DATE_FORMAT_FOR_RATING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field private static final RATING_SUBMISSION_CHANNEL:Ljava/lang/String; = "Kindle"

.field private static final RATING_SUBMISSION_ENDPOINT:Ljava/lang/String; = "KindleEndActions.ratingSubmission"

.field private static final RATING_SUBMISSION_PIPELINE:Ljava/lang/String; = "ReaderEndActionsNative"


# instance fields
.field private final postToAmazon:Z

.field private final postToGoodreads:Z

.field private final rating:Lcom/amazon/ea/reviews/data/Rating;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/reviews/data/Rating;ZZ)V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;-><init>()V

    const-string v0, "Rating cannot be null"

    .line 30
    invoke-static {p1, v0}, Lcom/amazon/ea/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/amazon/ea/reviews/submission/RatingMessage;->rating:Lcom/amazon/ea/reviews/data/Rating;

    .line 32
    iput-boolean p2, p0, Lcom/amazon/ea/reviews/submission/RatingMessage;->postToAmazon:Z

    .line 33
    iput-boolean p3, p0, Lcom/amazon/ea/reviews/submission/RatingMessage;->postToGoodreads:Z

    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "KindleEndActions.ratingSubmission"

    return-object v0
.end method

.method protected getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 43
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "asin"

    .line 45
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/RatingMessage;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Rating;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "rating"

    .line 46
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/RatingMessage;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Rating;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "pipelineName"

    const-string v2, "ReaderEndActionsNative"

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channelName"

    const-string v2, "Kindle"

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "timestamp"

    .line 49
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/ea/reviews/submission/RatingMessage;->rating:Lcom/amazon/ea/reviews/data/Rating;

    invoke-virtual {v3}, Lcom/amazon/ea/reviews/data/Rating;->getTimeStamp()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 52
    iget-boolean v2, p0, Lcom/amazon/ea/reviews/submission/RatingMessage;->postToAmazon:Z

    if-eqz v2, :cond_0

    const-string v2, "amazon"

    .line 53
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    :cond_0
    iget-boolean v2, p0, Lcom/amazon/ea/reviews/submission/RatingMessage;->postToGoodreads:Z

    if-eqz v2, :cond_1

    const-string v2, "goodreads"

    .line 56
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    const-string v2, "destinations"

    .line 58
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal problem trying to generate JSON"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
