.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IObjectCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/foundation/internal/IObjectCallback<",
        "Lcom/amazon/android/docviewer/ITOCItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V
    .locals 0

    .line 3145
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Lcom/amazon/android/docviewer/ITOCItem;)V
    .locals 3

    .line 3148
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    .line 3149
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 3150
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v1, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$2600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/nwstd/utils/RunnableHandler;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5$1;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/ITOCItem;)V

    invoke-virtual {v1, v2}, Lcom/amazon/nwstd/utils/RunnableHandler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public bridge synthetic execute(Ljava/lang/Object;)V
    .locals 0

    .line 3145
    check-cast p1, Lcom/amazon/android/docviewer/ITOCItem;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$5;->execute(Lcom/amazon/android/docviewer/ITOCItem;)V

    return-void
.end method
