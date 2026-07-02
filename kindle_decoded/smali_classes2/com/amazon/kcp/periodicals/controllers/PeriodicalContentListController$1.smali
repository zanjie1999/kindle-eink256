.class Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController$1;
.super Ljava/lang/Object;
.source "PeriodicalContentListController.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController$1;->this$0:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenArticle(I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController$1;->this$0:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->startReaderAndFinishIfRequired(I)V

    return-void
.end method

.method public onOpenCoverPage()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController$1;->this$0:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListController;->startReaderOnCoverPage()V

    return-void
.end method
