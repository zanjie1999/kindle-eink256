.class public Lcom/amazon/ea/reviews/submission/ReviewMessage;
.super Lcom/amazon/ea/messaging/JsonObjectMessage;
.source "ReviewMessage.java"


# static fields
.field private static final REVIEW_SUBMISSION_ODOT_END_POINT:Ljava/lang/String; = "CommunityReviews.submissions"

.field private static final REVIEW_SUBMISSION_PIPELINE:Ljava/lang/String; = "ReaderEndActionsNative"


# instance fields
.field private final isGrokWidget:Z

.field private final postToAmazon:Z

.field private final postToGoodreads:Z

.field private final review:Lcom/amazon/ea/reviews/data/Review;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/reviews/data/Review;ZZZ)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcom/amazon/ea/messaging/JsonObjectMessage;-><init>()V

    const-string v0, "Review cannot be null"

    .line 27
    invoke-static {p1, v0}, Lcom/amazon/ea/util/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    .line 29
    iput-boolean p2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->postToAmazon:Z

    .line 30
    iput-boolean p3, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->postToGoodreads:Z

    .line 31
    iput-boolean p4, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->isGrokWidget:Z

    return-void
.end method


# virtual methods
.method public getEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "CommunityReviews.submissions"

    return-object v0
.end method

.method protected getJsonObject()Lorg/json/JSONObject;
    .locals 4

    .line 41
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "asin"

    .line 43
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Review;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "rating"

    .line 44
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Review;->getRating()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "title"

    .line 45
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Review;->getReviewTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "text"

    .line 46
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Review;->getReviewText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "reviewState"

    .line 47
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Review;->getReviewState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "submittedOnClientTimestamp"

    .line 48
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Review;->getTimeStamp()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 49
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 50
    iget-boolean v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->postToAmazon:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->isGrokWidget:Z

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "amazon"

    .line 51
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 53
    :cond_1
    iget-boolean v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->postToGoodreads:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->isGrokWidget:Z

    if-eqz v2, :cond_2

    const-string v2, "goodreads"

    .line 54
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    const-string v2, "destinations"

    .line 56
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    iget-object v1, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v1}, Lcom/amazon/ea/reviews/data/Review;->getReviewId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "reviewID"

    .line 62
    iget-object v2, p0, Lcom/amazon/ea/reviews/submission/ReviewMessage;->review:Lcom/amazon/ea/reviews/data/Review;

    invoke-virtual {v2}, Lcom/amazon/ea/reviews/data/Review;->getReviewId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string/jumbo v1, "pipelineName"

    const-string v2, "ReaderEndActionsNative"

    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Internal problem trying to generate JSON"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
