.class Lcom/amazon/kcp/info/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Landroid/gesture/GestureOverlayView$OnGesturePerformedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/info/AboutActivity;->setUpGestureView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/info/AboutActivity;

.field final synthetic val$library:Landroid/gesture/GestureLibrary;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/info/AboutActivity;Landroid/gesture/GestureLibrary;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/amazon/kcp/info/AboutActivity$1;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    iput-object p2, p0, Lcom/amazon/kcp/info/AboutActivity$1;->val$library:Landroid/gesture/GestureLibrary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesturePerformed(Landroid/gesture/GestureOverlayView;Landroid/gesture/Gesture;)V
    .locals 5

    .line 115
    iget-object p1, p0, Lcom/amazon/kcp/info/AboutActivity$1;->val$library:Landroid/gesture/GestureLibrary;

    invoke-virtual {p1, p2}, Landroid/gesture/GestureLibrary;->recognize(Landroid/gesture/Gesture;)Ljava/util/ArrayList;

    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/gesture/Prediction;

    iget-wide v0, v0, Landroid/gesture/Prediction;->score:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 117
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/gesture/Prediction;

    iget-object p1, p1, Landroid/gesture/Prediction;->name:Ljava/lang/String;

    .line 118
    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getEasterEggColorForGesture(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/ColorModeData;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/info/AboutActivity$1;->this$0:Lcom/amazon/kcp/info/AboutActivity;

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->easter_egg_enabled_toast:I

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 129
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "AboutActivity"

    const-string v0, "ColorModeEasterEgg"

    invoke-virtual {p1, p2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
