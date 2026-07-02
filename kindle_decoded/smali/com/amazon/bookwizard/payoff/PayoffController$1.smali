.class Lcom/amazon/bookwizard/payoff/PayoffController$1;
.super Ljava/util/HashMap;
.source "PayoffController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/bookwizard/payoff/PayoffController;->onNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/bookwizard/payoff/PayoffController;

.field final synthetic val$detailShownCount:I

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/bookwizard/payoff/PayoffController;Ljava/util/List;I)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffController$1;->this$0:Lcom/amazon/bookwizard/payoff/PayoffController;

    iput-object p2, p0, Lcom/amazon/bookwizard/payoff/PayoffController$1;->val$tasks:Ljava/util/List;

    iput p3, p0, Lcom/amazon/bookwizard/payoff/PayoffController$1;->val$detailShownCount:I

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 205
    iget-object p1, p0, Lcom/amazon/bookwizard/payoff/PayoffController$1;->val$tasks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "BooksDownloaded"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget p1, p0, Lcom/amazon/bookwizard/payoff/PayoffController$1;->val$detailShownCount:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "NumKuBooksShown"

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
