.class Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;
.super Ljava/lang/Object;
.source "BookDetailController.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/bookdetail/BookDetailController;->showDetails(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

.field final synthetic val$imageUrl:Ljava/lang/String;

.field final synthetic val$isKu:Z

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/bookdetail/BookDetailController;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->this$0:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    iput-object p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->val$reason:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->val$isKu:Z

    iput-object p4, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->val$imageUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;->getBookDetail()Lcom/amazon/bookwizard/data/BookDetail;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 206
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->val$reason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/data/BookDetail;->setReason(Ljava/lang/String;)V

    .line 207
    iget-boolean v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->val$isKu:Z

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/data/BookDetail;->setIsKu(Z)V

    .line 208
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->val$imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/data/BookDetail;->setImageUrl(Ljava/lang/String;)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->this$0:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    invoke-static {v0}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->access$000(Lcom/amazon/bookwizard/bookdetail/BookDetailController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/bookwizard/data/DataProvider;->setBookDetail(Lcom/amazon/bookwizard/data/BookDetail;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 201
    check-cast p1, Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;

    invoke-virtual {p0, p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailController$1;->onResponse(Lcom/amazon/bookwizard/service/GetDetailsRequest$BookDetailData;)V

    return-void
.end method
