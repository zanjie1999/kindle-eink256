.class Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;
.super Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfAsyncTask;
.source "GoodreadsShelfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateRatingAndShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

.field final synthetic val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

.field final synthetic val$metadataHeaders:Ljava/util/Map;

.field final synthetic val$newRating:I

.field final synthetic val$newShelf:Ljava/lang/String;

.field final synthetic val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;


# direct methods
.method constructor <init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;ILjava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
    .locals 7

    move-object v6, p0

    move-object v0, p1

    .line 376
    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    move-object v0, p7

    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    move v0, p8

    iput v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$newRating:I

    move-object/from16 v0, p9

    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$newShelf:Ljava/lang/String;

    move-object/from16 v0, p10

    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$metadataHeaders:Ljava/util/Map;

    move-object/from16 v0, p11

    iput-object v0, v6, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

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
    .locals 8

    .line 379
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-static {v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->access$000(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    invoke-static {v0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->access$600(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)Ljava/lang/String;

    move-result-object v3

    .line 382
    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    iget v4, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$newRating:I

    iget-object v5, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$newShelf:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$metadataHeaders:Ljava/util/Map;

    iget-object v7, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-static/range {v1 .. v7}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->access$800(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 376
    check-cast p1, Lcom/amazon/ea/goodreadsshelf/service/ResponseData;

    invoke-virtual {p0, p1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$5;->onPostExecute(Lcom/amazon/ea/goodreadsshelf/service/ResponseData;)V

    return-void
.end method
