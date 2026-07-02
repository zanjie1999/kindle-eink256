.class Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;
.super Ljava/lang/Object;
.source "GoodreadsShelfManager.java"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->updateShelfViaOdot(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

.field final synthetic val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

.field final synthetic val$newShelf:Ljava/lang/String;

.field final synthetic val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;


# direct methods
.method constructor <init>(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;Ljava/lang/String;)V
    .locals 0

    .line 487
    iput-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iput-object p2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    iput-object p3, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    iput-object p4, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$newShelf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 3

    .line 490
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    sget-object v1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;->FAIL_ODOT_NOT_SENT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->access$900(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 4

    .line 495
    new-instance p1, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$newShelf:Ljava/lang/String;

    sget-object v2, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;->PUT_SHELF_ODOT:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;-><init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$RequestType;Z)V

    .line 497
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    iget-object v2, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$origin:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;

    invoke-static {v0, p1, v1, v2}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->access$300(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsMetadata$Origin;)V

    .line 498
    iget-object p1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->this$0:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;

    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$goodreadsInfo:Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;

    iget-object v1, p0, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$7;->val$newShelf:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v3}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager;->setLocalShelf(Lcom/amazon/ea/goodreadsshelf/GoodreadsInfo;Ljava/lang/String;Z)V

    return-void
.end method
