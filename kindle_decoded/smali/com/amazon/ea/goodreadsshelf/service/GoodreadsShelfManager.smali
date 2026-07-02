.class public Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;
.super Ljava/lang/Object;
.source "GoodreadsShelfManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;,
        Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;
    }
.end annotation


# static fields
.field private static final DELETE_LIBRARY_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/library/%s/book/%s"

.field private static final GET_BOOK_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/book:amzn/%s"

.field private static final GET_LIBRARY_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s"

.field private static final HTTP_DELETE:Ljava/lang/String; = "DELETE"

.field private static final HTTP_GET:Ljava/lang/String; = "GET"

.field private static final HTTP_PUT:Ljava/lang/String; = "PUT"

.field private static final RESPONSE_BOOK_URI_KEY:Ljava/lang/String; = "book_uri"

.field private static final RESPONSE_NAME_KEY:Ljava/lang/String; = "name"

.field private static final RESPONSE_SHELF_KEY:Ljava/lang/String; = "shelf"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.goodreadsshelf.service.GoodreadsShelfManager"

.field private static final UPDATE_LIBRARY_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s/shelf"

.field private static final UPDATE_RATING_AND_LIBRARY_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/library/%s/book/%s"

.field private static instance:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;


# instance fields
.field private asyncTaskMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;",
            "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;)Ljava/util/Map;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)Landroid/util/Pair;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getShelfFromResponse(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishGetShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishRemoveShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)Ljava/lang/String;
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getBookIdFromResponse(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->removeFromLibraryHelper(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method static synthetic access$800(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 0

    .line 33
    invoke-direct/range {p0 .. p6}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateRatingAndShelfHelper(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutShelfOdotErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method private getBookIdFromResponse(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 568
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string v1, "book_uri"

    .line 573
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    const-string v0, "/"

    .line 577
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 578
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    return-object p1
.end method

.method public static getInstance()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;
    .locals 1

    .line 55
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->instance:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-direct {v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;-><init>()V

    sput-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->instance:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    .line 58
    :cond_0
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->instance:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    return-object v0
.end method

.method private getRateAndUpdateShelfRequestParams(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "kca://book/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 605
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "name"

    .line 606
    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "book_uri"

    .line 609
    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "review_uri"

    const-string v1, ""

    .line 610
    invoke-interface {p3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p1, "shelf"

    .line 611
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string/jumbo p2, "star_rating"

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3
.end method

.method private getShelfFromResponse(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/goodreadsshelf/service/ResponseData;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 514
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNKNOWN:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->getResponseCode()I

    move-result v1

    const/16 v2, 0x194

    if-ne v1, v2, :cond_1

    const-string/jumbo p1, "none"

    .line 525
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_1
    const/16 v2, 0x191

    if-ne v1, v2, :cond_2

    .line 530
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNAUTHORIZED:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 v2, 0xc8

    if-eq v1, v2, :cond_3

    .line 535
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNKNOWN:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 538
    :cond_3
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->getJsonObject()Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_4

    .line 540
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_INVALID_RESPONSE:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_4
    const-string/jumbo v1, "shelf"

    .line 543
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_5

    .line 545
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_INVALID_RESPONSE:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    :cond_5
    const-string/jumbo v1, "name"

    .line 548
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 550
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 551
    sget-object p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_INVALID_RESPONSE:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-static {v0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1

    .line 554
    :cond_6
    invoke-static {p1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private incrementCountForMetric(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;)V
    .locals 1

    .line 766
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->SA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    if-ne p2, v0, :cond_0

    .line 767
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 768
    invoke-virtual {p1, p3}, Lcom/amazon/startactions/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    goto :goto_0

    .line 770
    :cond_0
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    if-eqz p1, :cond_1

    .line 771
    invoke-virtual {p1, p3}, Lcom/amazon/ea/metrics/Profiler;->addCount(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private publishGetShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 7

    .line 684
    sget-object v3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->GET_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 685
    new-instance v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 687
    invoke-direct {p0, v6, p1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method private publishGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 7

    .line 630
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v0

    iget-boolean v0, v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->isGetRequest:Z

    if-nez v0, :cond_1

    .line 631
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {p2}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getFailureReason()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 638
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    .line 639
    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 641
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getFailureReason()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-result-object v5

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->reportServiceCallMetrics(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Z)V

    return-void
.end method

.method private publishPutShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V
    .locals 6

    if-eqz p4, :cond_0

    .line 654
    sget-object p4, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_AUTO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    goto :goto_0

    :cond_0
    sget-object p4, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_MANUAL:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    :goto_0
    move-object v3, p4

    .line 655
    new-instance p4, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 657
    invoke-direct {p0, p4, p1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method private publishPutShelfOdotErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 7

    .line 669
    sget-object v3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_ODOT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 670
    new-instance v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 672
    invoke-direct {p0, v6, p1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method private publishRemoveShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 7

    .line 699
    sget-object v3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->REMOVE_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 700
    new-instance v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 702
    invoke-direct {p0, v6, p1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method private removeFromLibrary(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p1

    .line 250
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getGoodreadsId()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v2, v13

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s"

    .line 258
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 260
    sget-object v9, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->REMOVE_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 262
    iget-object v0, v11, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    if-eqz v0, :cond_1

    .line 265
    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 266
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 268
    :cond_1
    new-instance v14, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$3;

    const/4 v4, 0x0

    const-string v3, "GET"

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v5, p2

    move-object v6, v9

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v10}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$3;-><init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Ljava/util/Map;)V

    .line 291
    iget-object v0, v11, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v13, [Ljava/lang/Void;

    invoke-virtual {v14, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 255
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_MISSING_INPUT_INFO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-object/from16 v1, p3

    invoke-direct {p0, v12, v0, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishRemoveShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method private removeFromLibraryHelper(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;",
            ")V"
        }
    .end annotation

    move-object v10, p0

    move-object v11, p1

    if-nez p2, :cond_0

    .line 306
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_BOOK_ID_NOT_FOUND:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-object/from16 v8, p4

    invoke-direct {p0, p1, v0, v8}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishRemoveShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void

    :cond_0
    move-object/from16 v8, p4

    .line 310
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getGoodreadsId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v1, v12

    const/4 v0, 0x1

    aput-object p2, v1, v0

    const-string v2, "https://kca.amazon.com/kca/library/%s/book/%s"

    .line 312
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 314
    sget-object v9, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->REMOVE_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 316
    iget-object v1, v10, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    if-eqz v1, :cond_1

    .line 319
    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 320
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 322
    :cond_1
    new-instance v13, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$4;

    const/4 v4, 0x0

    const-string v3, "DELETE"

    move-object v0, v13

    move-object v1, p0

    move-object/from16 v5, p3

    move-object v6, v9

    move-object v7, p1

    move-object/from16 v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$4;-><init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;)V

    .line 341
    iget-object v0, v10, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v13, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private reportServiceCallMetrics(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Z)V
    .locals 3

    .line 737
    iget-object v0, p3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    const-string v1, "Failed2"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 738
    iget-object v1, p3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    const-string v2, "Success2"

    invoke-static {v1, v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    xor-int/lit8 v2, p5, 0x1

    .line 740
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setFlagForMetric(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;Z)V

    .line 741
    invoke-direct {p0, p1, p2, v1, p5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setFlagForMetric(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;Z)V

    if-nez p5, :cond_0

    .line 744
    iget-object v1, p4, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->metricName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 745
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->incrementCountForMetric(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    .line 750
    iget-object p1, p3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    const-string p3, "AutoshelfServiceSuccess"

    invoke-direct {p0, p2, p3, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->reportSimpleMetric(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 752
    :cond_1
    iget-object p1, p3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    const-string p5, "AutoshelfServiceFailure"

    invoke-direct {p0, p2, p5, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->reportSimpleMetric(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    iget-object p1, p3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->metricName:Ljava/lang/String;

    invoke-static {p5, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p4, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->metricName:Ljava/lang/String;

    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->reportSimpleMetric(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private reportSimpleMetric(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 806
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->SA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    if-ne p1, v0, :cond_0

    .line 807
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getStartActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object p1

    goto :goto_0

    .line 809
    :cond_0
    invoke-static {}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->getEndActionsMetricsManager()Lcom/amazon/ea/metrics/SimpleMetricsManager;

    move-result-object p1

    .line 812
    :goto_0
    invoke-virtual {p1, p2, p3}, Lcom/amazon/ea/metrics/SimpleMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setFlagForMetric(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;Z)V
    .locals 1

    .line 786
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;->SA:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    if-ne p2, v0, :cond_0

    .line 787
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/startactions/metrics/SessionManager;->getSessionMetric(Ljava/lang/String;)Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    .line 788
    invoke-virtual {p1, p3, p4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    goto :goto_0

    .line 790
    :cond_0
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    if-eqz p1, :cond_1

    .line 791
    invoke-virtual {p1, p4, p3}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setNewShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v9, p5

    .line 195
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s/shelf"

    .line 202
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eqz v9, :cond_1

    .line 204
    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_AUTO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_MANUAL:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    :goto_0
    move-object v11, v1

    .line 205
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string/jumbo v1, "name"

    move-object/from16 v10, p2

    .line 206
    invoke-interface {v4, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v1, v12, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v1, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    if-eqz v1, :cond_2

    .line 211
    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v1}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 214
    :cond_2
    new-instance v15, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$2;

    const-string v3, "PUT"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v5, p3

    move-object v6, v11

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move/from16 v9, p5

    move-object/from16 v10, p2

    invoke-direct/range {v0 .. v11}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$2;-><init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;ZLjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;)V

    .line 233
    iget-object v0, v12, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v14, [Ljava/lang/Void;

    invoke-virtual {v15, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 199
    :cond_3
    :goto_1
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_MISSING_INPUT_INFO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-object/from16 v1, p4

    invoke-direct {v12, v13, v0, v1, v9}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V

    return-void
.end method

.method private updateRatingAndShelfHelper(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v0, p2

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_BOOK_ID_NOT_FOUND:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-object/from16 v8, p6

    invoke-virtual {v12, v13, v0, v8}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutRatingAndShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void

    :cond_0
    move-object/from16 v8, p6

    .line 407
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getGoodreadsId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v2, v14

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v3, "https://kca.amazon.com/kca/library/%s/book/%s"

    .line 409
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 411
    sget-object v11, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move/from16 v9, p3

    move-object/from16 v10, p4

    .line 412
    invoke-direct {v12, v0, v9, v10}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getRateAndUpdateShelfRequestParams(Ljava/lang/String;ILjava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 414
    iget-object v0, v12, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    if-eqz v0, :cond_1

    .line 417
    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 418
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 420
    :cond_1
    new-instance v15, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;

    const-string v3, "PUT"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v5, p5

    move-object v6, v11

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    move/from16 v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v11}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;-><init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;)V

    .line 438
    iget-object v0, v12, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v14, [Ljava/lang/Void;

    invoke-virtual {v15, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public fetchRemoteShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 14

    move-object v10, p0

    move-object v11, p1

    .line 125
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v2, v12

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s"

    .line 132
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 134
    sget-object v9, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->GET_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 136
    iget-object v0, v10, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 140
    :cond_1
    new-instance v13, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$1;

    const/4 v4, 0x0

    .line 141
    invoke-static/range {p2 .. p2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata;->getGoodreadsMetaDataHeaders(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)Ljava/util/Map;

    move-result-object v5

    const-string v3, "GET"

    move-object v0, v13

    move-object v1, p0

    move-object v6, v9

    move-object v7, p1

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v9}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$1;-><init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;)V

    .line 159
    iget-object v0, v10, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v12, [Ljava/lang/Void;

    invoke-virtual {v13, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_2
    return-void

    .line 129
    :cond_3
    :goto_0
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_MISSING_INPUT_INFO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-object/from16 v1, p2

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishGetShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method public getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;
    .locals 1

    .line 75
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "startactions.gr.shelf"

    .line 76
    invoke-static {v0, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo p1, "none"

    :cond_0
    return-object p1
.end method

.method public isUpdateCallInProgress(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Z
    .locals 1

    .line 449
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    if-eqz p1, :cond_0

    .line 450
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;->getRequestType()Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-result-object p1

    iget-boolean p1, p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->isGetRequest:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public publishPutRatingAndShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 7

    .line 714
    sget-object v3, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 715
    new-instance v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->getLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;ZLcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 717
    invoke-direct {p0, v6, p1, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method public setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Z)V
    .locals 1

    .line 100
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "startactions.gr.shelf"

    if-eqz p3, :cond_0

    .line 103
    invoke-static {v0, p1, p2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 106
    :cond_0
    invoke-static {v0, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getStringPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 107
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 108
    invoke-static {v0, p1, p2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setStringPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public updateRatingAndShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 16

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    .line 356
    invoke-static/range {p4 .. p4}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata;->getGoodreadsMetaDataHeaders(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)Ljava/util/Map;

    move-result-object v10

    .line 358
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    .line 360
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getGoodreadsId()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v2, v14

    const-string v0, "https://kca.amazon.com/kca/book:amzn/%s"

    .line 366
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 368
    sget-object v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_RATING_AND_SHELF:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    .line 370
    iget-object v0, v12, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    if-eqz v0, :cond_1

    .line 373
    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 374
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 376
    :cond_1
    new-instance v15, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;

    const/4 v4, 0x0

    const-string v3, "GET"

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v5, v10

    move-object/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v11}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;-><init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    .line 385
    iget-object v0, v12, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v14, [Ljava/lang/Void;

    invoke-virtual {v15, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 363
    :cond_2
    :goto_0
    sget-object v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_MISSING_INPUT_INFO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    move-object/from16 v1, p4

    invoke-virtual {v12, v13, v0, v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutRatingAndShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method public updateShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V
    .locals 6

    .line 175
    invoke-static {p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata;->getGoodreadsMetaDataHeaders(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)Ljava/util/Map;

    move-result-object v3

    const-string/jumbo v0, "none"

    .line 176
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-direct {p0, p1, v3, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->removeFromLibrary(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 179
    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setNewShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Z)V

    :goto_0
    return-void
.end method

.method public updateShelfViaOdot(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 10

    .line 468
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 471
    sget-object p2, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_MISSING_INPUT_INFO:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutShelfOdotErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;

    if-eqz v0, :cond_1

    .line 478
    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask$Status;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 479
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 480
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->asyncTaskMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v7, v0, v2

    .line 485
    new-instance v0, Lcom/amazon/ea/goodreadsshelf/service/UpdateShelfOdotMessage;

    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;->getAsin()Ljava/lang/String;

    move-result-object v5

    .line 486
    invoke-static {p3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata;->getGoodreadsMetaDataHeaders(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)Ljava/util/Map;

    move-result-object v9

    move-object v4, v0

    move-object v6, p2

    invoke-direct/range {v4 .. v9}, Lcom/amazon/ea/goodreadsshelf/service/UpdateShelfOdotMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)V

    .line 487
    new-instance v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;-><init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    return-void
.end method
