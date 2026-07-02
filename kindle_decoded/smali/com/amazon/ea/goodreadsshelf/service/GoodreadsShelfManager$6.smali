.class Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;
.super Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;
.source "GoodreadsShelfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateRatingAndShelfHelper(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

.field final synthetic val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

.field final synthetic val$newRating:I

.field final synthetic val$newShelf:Ljava/lang/String;

.field final synthetic val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

.field final synthetic val$requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;


# direct methods
.method constructor <init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;)V
    .locals 7

    move-object v6, p0

    move-object v0, p1

    .line 420
    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-object v0, p7

    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move-object v0, p8

    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    move/from16 v0, p9

    iput v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$newRating:I

    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$newShelf:Ljava/lang/String;

    move-object/from16 v0, p11

    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;)V

    return-void
.end method


# virtual methods
.method protected onPostExecute(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)V
    .locals 9

    .line 423
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->access$000(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 426
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNKNOWN:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutRatingAndShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    goto :goto_0

    .line 427
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->getResponseCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_1

    .line 428
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNAUTHORIZED:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutRatingAndShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    goto :goto_0

    .line 429
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;->getResponseCode()I

    move-result p1

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_2

    .line 430
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_UNKNOWN:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->publishPutRatingAndShelfErrorEvent(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    goto :goto_0

    .line 432
    :cond_2
    new-instance p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    iget-object v4, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    iget v5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$newRating:I

    iget-object v6, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$newShelf:Ljava/lang/String;

    iget-object v7, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$requestType:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const/4 v8, 0x1

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Z)V

    .line 433
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->access$300(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    .line 434
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->val$newShelf:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 420
    check-cast p1, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$6;->onPostExecute(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)V

    return-void
.end method
