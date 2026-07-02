.class Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;
.super Ljava/lang/Object;
.source "ReaderMenuContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

.field final synthetic val$readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field final synthetic val$wasRestarted:Z

.field final synthetic val$wasVisible:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;ZZLcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->val$wasRestarted:Z

    iput-boolean p3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->val$wasVisible:Z

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->val$readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 422
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->resetScrollViews()V

    .line 424
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$200(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->val$wasRestarted:Z

    invoke-virtual {v1, v0, v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->show(ZZ)V

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$300(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 427
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_BG_COLOR_CHANGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 428
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_CS_TOGGLE_CHANGE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 430
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->access$302(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;Z)Z

    .line 432
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->val$wasVisible:Z

    if-nez v0, :cond_2

    .line 433
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;->val$readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    .line 436
    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_2
    return-void
.end method
