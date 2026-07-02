.class Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;
.super Ljava/lang/Object;
.source "AllDownloadToggle.java"

# interfaces
.implements Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/widget/AllDownloadToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/widget/AllDownloadToggle;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;->this$0:Lcom/amazon/kindle/library/widget/AllDownloadToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Lcom/amazon/kindle/library/widget/DownloadedToggle;Z)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;->this$0:Lcom/amazon/kindle/library/widget/AllDownloadToggle;

    invoke-static {v0, p2}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->access$000(Lcom/amazon/kindle/library/widget/AllDownloadToggle;Z)V

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;->this$0:Lcom/amazon/kindle/library/widget/AllDownloadToggle;

    invoke-static {v0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->access$100(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 41
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->All_DOWNLOAD_TOGGLE_PRESSED:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle$1;->this$0:Lcom/amazon/kindle/library/widget/AllDownloadToggle;

    invoke-static {v0}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->access$100(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/library/widget/DownloadedToggle$OnToggleListener;->onToggle(Lcom/amazon/kindle/library/widget/DownloadedToggle;Z)V

    .line 47
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->All_DOWNLOAD_TOGGLE_PRESSED:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createEndEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    :cond_0
    return-void
.end method
