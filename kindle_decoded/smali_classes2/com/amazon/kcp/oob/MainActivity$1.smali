.class Lcom/amazon/kcp/oob/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/oob/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/MainActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/MainActivity;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/amazon/kcp/oob/MainActivity$1;->this$0:Lcom/amazon/kcp/oob/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didEnterDualScreenMode()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity$1;->this$0:Lcom/amazon/kcp/oob/MainActivity;

    iget-object v0, v0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/NavigationController;->getCurrentTabMetricsTag()Ljava/lang/String;

    move-result-object v0

    .line 85
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/oob/MainActivity$1;->this$0:Lcom/amazon/kcp/oob/MainActivity;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;->onDisplayMaskChangedInMainActivity(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method public didEnterSingleScreenMode()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/amazon/kcp/oob/MainActivity$1;->this$0:Lcom/amazon/kcp/oob/MainActivity;

    iget-object v0, v0, Lcom/amazon/kcp/oob/MainActivity;->navigationController:Lcom/amazon/kcp/oob/NavigationController;

    invoke-virtual {v0}, Lcom/amazon/kcp/oob/NavigationController;->getCurrentTabMetricsTag()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/oob/MainActivity$1;->this$0:Lcom/amazon/kcp/oob/MainActivity;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;->onDisplayMaskChangedInMainActivity(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
