.class Lcom/amazon/bookwizard/bookdetail/BookDetailController$2;
.super Ljava/lang/Object;
.source "BookDetailController.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/bookdetail/BookDetailController;->showDetails(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/bookwizard/data/Category;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/bookdetail/BookDetailController;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/bookdetail/BookDetailController;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$2;->this$0:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 1

    .line 215
    iget-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$2;->this$0:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    invoke-static {p1}, Lcom/amazon/bookwizard/bookdetail/BookDetailController;->access$000(Lcom/amazon/bookwizard/bookdetail/BookDetailController;)Lcom/amazon/bookwizard/data/DataProvider;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/bookwizard/data/DataProvider;->setBookDetail(Lcom/amazon/bookwizard/data/BookDetail;)V

    return-void
.end method
