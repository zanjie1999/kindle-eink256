.class Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$4;
.super Ljava/lang/Object;
.source "PeriodicalReaderActivity.java"

# interfaces
.implements Lcom/amazon/android/widget/SearchViewWrapper$OnFocusChangeListenerWrapper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->constructOptionsMenu(Landroid/view/Menu;)V
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

    .line 636
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$4;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    if-eqz p2, :cond_1

    .line 641
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$4;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 644
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 645
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$4;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->access$000(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(ZZ)Z

    .line 648
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    goto :goto_0

    .line 651
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity$4;->this$0:Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->access$100(Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;)V

    :cond_2
    :goto_0
    return-void
.end method
