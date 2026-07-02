.class public final Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;
.super Ljava/lang/Object;
.source "MarkAsRead.kt"

# interfaces
.implements Lcom/amazon/kindle/toast/KindleToastAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/MarkAsRead;->onItemsReadyToMove(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $actionText:Ljava/lang/String;

.field final synthetic $dismissText:Ljava/lang/String;

.field final synthetic $ids:Ljava/util/List;

.field final synthetic $shelf:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/library/MarkAsRead;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/MarkAsRead;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 192
    iput-object p1, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->this$0:Lcom/amazon/kcp/library/MarkAsRead;

    iput-object p2, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->$actionText:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->$dismissText:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->$ids:Ljava/util/List;

    iput-object p5, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->$shelf:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionText()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->$actionText:Ljava/lang/String;

    return-object v0
.end method

.method public dismissText()Ljava/lang/String;
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->$dismissText:Ljava/lang/String;

    return-object v0
.end method

.method public onActionClicked()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->this$0:Lcom/amazon/kcp/library/MarkAsRead;

    invoke-static {v0}, Lcom/amazon/kcp/library/MarkAsRead;->access$getGoodreadsMarManager$p(Lcom/amazon/kcp/library/MarkAsRead;)Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->$ids:Ljava/util/List;

    iget-object v2, p0, Lcom/amazon/kcp/library/MarkAsRead$onItemsReadyToMove$1;->$shelf:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;->moveToShelf(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
