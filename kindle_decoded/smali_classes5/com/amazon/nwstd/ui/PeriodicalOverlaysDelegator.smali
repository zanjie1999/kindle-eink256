.class public Lcom/amazon/nwstd/ui/PeriodicalOverlaysDelegator;
.super Ljava/lang/Object;
.source "PeriodicalOverlaysDelegator.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$OverlaysDelegator;


# instance fields
.field private final periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PeriodicalOverlaysDelegator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    return-void
.end method


# virtual methods
.method public cancelHideOverlaysAfterDelay()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalOverlaysDelegator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    return-void
.end method

.method public hideViewOptions()V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalOverlaysDelegator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isViewOptionsOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalOverlaysDelegator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->hideViewOptions()V

    .line 24
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalOverlaysDelegator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/PeriodicalReaderActivity;->updateCustomButtons()V

    :cond_0
    return-void
.end method
