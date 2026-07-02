.class Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;
.super Ljava/lang/Object;
.source "ReaderTOCPanelHelper.java"

# interfaces
.implements Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainDrawerListener"
.end annotation


# instance fields
.field private helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

.field private isDragging:Z


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)V
    .locals 1

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->isDragging:Z

    .line 332
    iput-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$000(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)V

    .line 362
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 3

    .line 337
    iget-boolean v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->isDragging:Z

    if-eqz v0, :cond_1

    .line 338
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 339
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;->SWIPE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;)V

    goto :goto_0

    .line 343
    :cond_0
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_LEFTNAV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;->SWIPE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionCause;)V

    .line 350
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$000(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)V

    .line 352
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onDrawerSlide(Landroid/view/View;F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$200(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$202(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)Z

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onDrawerStateChanged(I)V
    .locals 4

    .line 380
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_1

    .line 411
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v2, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$402(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)Z

    if-eqz v0, :cond_5

    .line 412
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$200(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 413
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->CLOSE_TOC:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    goto :goto_1

    .line 405
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->isDragging:Z

    .line 406
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$200(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 407
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    sget-object v1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENING:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->publishEvent(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 384
    iput-boolean v1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->isDragging:Z

    .line 387
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x5

    goto :goto_0

    :cond_3
    const/4 v2, 0x3

    .line 389
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v3}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$300(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    .line 390
    iget-object v3, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v3, v2}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$202(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)Z

    .line 391
    iget-object v3, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v3, v1}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$402(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;Z)Z

    if-nez v2, :cond_4

    .line 393
    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    sget-object v3, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->CLOSED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->publishEvent(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V

    if-eqz v0, :cond_5

    .line 395
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->CLOSE_TOC:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    goto :goto_1

    .line 398
    :cond_4
    iget-object v2, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    sget-object v3, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->OPENED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->publishEvent(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V

    if-eqz v0, :cond_5

    .line 400
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->OPEN_TOC:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 420
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 421
    iget-object v0, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    invoke-static {v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->access$100(Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;)Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/drawerlayout/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 424
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper$MainDrawerListener;->helper:Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;

    sget-object v0, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->STATE_CHANGED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/panels/ReaderTOCPanelHelper;->publishEvent(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V

    return-void
.end method
