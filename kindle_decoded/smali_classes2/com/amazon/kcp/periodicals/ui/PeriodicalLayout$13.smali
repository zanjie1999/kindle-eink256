.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IOverlayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->replicaViewInitialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 2123
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hideOverlaysIfNeeded(Z)V
    .locals 2

    .line 2139
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2141
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2142
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_0
    return-void
.end method

.method public toggleVisibility()V
    .locals 3

    .line 2126
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2128
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isInGridView()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2129
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    goto :goto_0

    .line 2132
    :cond_0
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->OPEN_THUMBNAIL_SLIDER:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 2133
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$13;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0, v1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_1
    :goto_0
    return-void
.end method
