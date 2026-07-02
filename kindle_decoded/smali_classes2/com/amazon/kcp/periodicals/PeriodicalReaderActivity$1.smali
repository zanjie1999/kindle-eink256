.class Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$1;
.super Ljava/lang/Object;
.source "PeriodicalReaderActivity.java"

# interfaces
.implements Lcom/amazon/nwstd/upsell/IReadingHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$1;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrentArticleID()Ljava/lang/String;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$1;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 383
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getCurrentArticleID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReadingPercentage()D
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$1;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_0

    .line 371
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getReadingPercentage()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isInTextView()Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$1;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    if-eqz v0, :cond_0

    .line 390
    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isTextViewVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
