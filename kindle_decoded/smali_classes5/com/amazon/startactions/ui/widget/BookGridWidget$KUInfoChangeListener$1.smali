.class Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;
.super Ljava/lang/Object;
.source "BookGridWidget.java"

# interfaces
.implements Lcom/amazon/ea/images/ImageDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->onPurchaseInfoChange(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

.field final synthetic val$asin:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->val$asin:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 336
    invoke-static {}, Lcom/amazon/startactions/ui/widget/BookGridWidget;->access$100()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got an updated image with a KU badge. [hasExistingBitmap?="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "] [bookGridView inflated?="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    .line 337
    invoke-static {v3}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->access$200(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->access$300(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->val$asin:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 339
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    invoke-static {v0}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->access$400(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;)Ljava/util/concurrent/atomic/AtomicReferenceArray;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V

    .line 343
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    invoke-static {p2}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->access$200(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 344
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    invoke-static {p2}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->access$200(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;)Lcom/amazon/ea/ui/widget/bookgrid/BookGridView;

    move-result-object p2

    new-instance v0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1$1;-><init>(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;I)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    :cond_2
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener$1;->this$0:Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;

    invoke-static {p1}, Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;->access$500(Lcom/amazon/startactions/ui/widget/BookGridWidget$KUInfoChangeListener;)V

    return-void
.end method
