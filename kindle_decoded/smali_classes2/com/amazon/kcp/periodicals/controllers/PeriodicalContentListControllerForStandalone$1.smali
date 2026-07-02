.class Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone$1;
.super Ljava/lang/Object;
.source "PeriodicalContentListControllerForStandalone.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/controllers/IPeriodicalTOCItemEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone$1;->this$0:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOpenArticle(I)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone$1;->this$0:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->startReaderAndFinishIfRequired(I)V

    return-void
.end method

.method public onOpenCoverPage()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone$1;->this$0:Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/controllers/PeriodicalContentListControllerForStandalone;->startReaderOnCoverPage()V

    return-void
.end method
