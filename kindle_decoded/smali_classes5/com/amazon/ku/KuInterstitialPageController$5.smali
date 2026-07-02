.class Lcom/amazon/ku/KuInterstitialPageController$5;
.super Ljava/lang/Object;
.source "KuInterstitialPageController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ku/KuInterstitialPageController;->downloadBooks(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ku/KuInterstitialPageController;

.field final synthetic val$books:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/ku/KuInterstitialPageController;Ljava/util/List;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/amazon/ku/KuInterstitialPageController$5;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    iput-object p2, p0, Lcom/amazon/ku/KuInterstitialPageController$5;->val$books:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 558
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 559
    iget-object v1, p0, Lcom/amazon/ku/KuInterstitialPageController$5;->val$books:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ku/data/CapturedBook;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 562
    invoke-virtual {v2}, Lcom/amazon/ku/data/CapturedBook;->getAsin()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    invoke-virtual {v2}, Lcom/amazon/ku/data/CapturedBook;->getTitle()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/amazon/ku/data/CapturedBook;->getAuthor()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    const-string/jumbo v2, "{asin : %s, title : \"%s\", author : \"%s\"}"

    .line 561
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 563
    const-class v3, Lcom/amazon/bookwizard/service/PayoffRec;

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/bookwizard/service/PayoffRec;

    .line 564
    new-instance v3, Lcom/amazon/bookwizard/payoff/BorrowBookTask;

    sget-object v4, Lcom/amazon/bookwizard/glide/ActionType;->KU:Lcom/amazon/bookwizard/glide/ActionType;

    invoke-direct {v3, v2, v4}, Lcom/amazon/bookwizard/payoff/BorrowBookTask;-><init>(Lcom/amazon/bookwizard/service/PayoffRec;Lcom/amazon/bookwizard/glide/ActionType;)V

    iget-object v2, p0, Lcom/amazon/ku/KuInterstitialPageController$5;->this$0:Lcom/amazon/ku/KuInterstitialPageController;

    invoke-static {v2}, Lcom/amazon/ku/KuInterstitialPageController;->access$1100(Lcom/amazon/ku/KuInterstitialPageController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Void;

    invoke-virtual {v3, v2, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    return-void
.end method
