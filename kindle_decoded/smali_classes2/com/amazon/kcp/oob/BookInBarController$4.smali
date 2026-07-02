.class Lcom/amazon/kcp/oob/BookInBarController$4;
.super Ljava/lang/Object;
.source "BookInBarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/BookInBarController;->onLastReadBookEvent(Lcom/amazon/kcp/reader/LastReadBookEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/BookInBarController;

.field final synthetic val$event:Lcom/amazon/kcp/reader/LastReadBookEvent;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kcp/reader/LastReadBookEvent;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazon/kcp/oob/BookInBarController$4;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    iput-object p2, p0, Lcom/amazon/kcp/oob/BookInBarController$4;->val$event:Lcom/amazon/kcp/reader/LastReadBookEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$4;->val$event:Lcom/amazon/kcp/reader/LastReadBookEvent;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/LastReadBookEvent;->getBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController$4;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v1}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController$4;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    .line 215
    invoke-static {v1}, Lcom/amazon/kcp/oob/BookInBarController;->access$000(Lcom/amazon/kcp/oob/BookInBarController;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/amazon/kcp/util/Utils;->isSameBook(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 219
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 220
    iget-object v1, p0, Lcom/amazon/kcp/oob/BookInBarController$4;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-static {v1, v0}, Lcom/amazon/kcp/oob/BookInBarController;->access$002(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/content/ContentMetadata;

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$4;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/oob/BookInBarController;->access$002(Lcom/amazon/kcp/oob/BookInBarController;Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/content/ContentMetadata;

    .line 224
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/BookInBarController$4;->this$0:Lcom/amazon/kcp/oob/BookInBarController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/BookInBarController;->updateBibView()V

    return-void
.end method
