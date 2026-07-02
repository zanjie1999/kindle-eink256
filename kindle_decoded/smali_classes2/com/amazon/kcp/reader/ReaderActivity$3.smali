.class Lcom/amazon/kcp/reader/ReaderActivity$3;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didEnterDualScreenMode()V
    .locals 2

    .line 642
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;->onDisplayMaskChangedInReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-void
.end method

.method public didEnterSingleScreenMode()V
    .locals 2

    .line 637
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;->onDisplayMaskChangedInReaderActivity(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-void
.end method
