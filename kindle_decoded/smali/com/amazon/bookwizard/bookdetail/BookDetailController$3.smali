.class Lcom/amazon/bookwizard/bookdetail/BookDetailController$3;
.super Ljava/util/HashMap;
.source "BookDetailController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/bookdetail/BookDetailController;->onWantToReadClicked(Lcom/amazon/bookwizard/data/Category;Lcom/amazon/bookwizard/data/Book;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

.field final synthetic val$isWantToRead:Z


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/bookdetail/BookDetailController;Z)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$3;->this$0:Lcom/amazon/bookwizard/bookdetail/BookDetailController;

    iput-boolean p2, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$3;->val$isWantToRead:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 242
    iget-boolean p1, p0, Lcom/amazon/bookwizard/bookdetail/BookDetailController$3;->val$isWantToRead:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "IsWantToReadSelected"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
