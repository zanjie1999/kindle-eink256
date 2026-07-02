.class public Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;
.super Lcom/amazon/ea/messaging/AjaxMessage;
.source "RatingAjaxMessage.java"


# static fields
.field private static final ASIN_PARAM_KEY:Ljava/lang/String; = "asin"

.field private static final CHANNEL_NAME:Ljava/lang/String; = "EndActionsAndroid"

.field private static final CHANNEL_NAME_PARAM_KEY:Ljava/lang/String; = "channelName"

.field private static final CONTEXT_ID_FOR_RATING_SERVICE:Ljava/lang/String; = "EndActionsStandalone"

.field private static final CONTEXT_ID_PARAM_KEY:Ljava/lang/String; = "contextIdForRatingService"

.field private static final CSRF_PARAM_KEY:Ljava/lang/String; = "csrfT"

.field private static final PATH:Ljava/lang/String; = "/gp/customer-reviews/aj/customer-and-asin/submit-rating"

.field private static final PIPELINE_NAME:Ljava/lang/String; = "EndActionsAndroid"

.field private static final PIPELINE_NAME_PARAM_KEY:Ljava/lang/String; = "pipelineName"

.field private static final RATING_PARAM_KEY:Ljava/lang/String; = "rating"

.field private static final SHOULD_SUBMIT_PARAM_KEY:Ljava/lang/String; = "shouldSubmitToRatingsService"

.field private static final SHOULD_SUBMIT_TO_RATING_SERVICE:Ljava/lang/String; = "1"


# instance fields
.field private final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/amazon/ea/messaging/AjaxMessage;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;->params:Ljava/util/Map;

    const-string v1, "asin"

    .line 33
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object p1, p0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;->params:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "rating"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    iget-object p1, p0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;->params:Ljava/util/Map;

    const-string p2, "csrfT"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    iget-object p1, p0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;->params:Ljava/util/Map;

    const-string p2, "contextIdForRatingService"

    const-string p3, "EndActionsStandalone"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    iget-object p1, p0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;->params:Ljava/util/Map;

    const-string/jumbo p2, "shouldSubmitToRatingsService"

    const-string p3, "1"

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;->params:Ljava/util/Map;

    const-string p2, "EndActionsAndroid"

    const-string/jumbo p3, "pipelineName"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;->params:Ljava/util/Map;

    const-string p3, "channelName"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/amazon/ea/reviews/submission/RatingAjaxMessage;->params:Ljava/util/Map;

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/gp/customer-reviews/aj/customer-and-asin/submit-rating"

    return-object v0
.end method
