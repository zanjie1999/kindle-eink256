.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$2;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/IIntCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;)V
    .locals 0

    .line 3083
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(I)V
    .locals 4

    .line 3087
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TAP_TO_TEXT_INIT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 3088
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;->TAP_TO_TEXT:Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;

    invoke-static {v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V

    .line 3092
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 3093
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3092
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v1, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    .line 3095
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "PeriodicalsAppPreferences"

    const/4 v3, 0x0

    .line 3093
    invoke-interface {v0, v2, v3, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3097
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v1, v1, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/newsstand/core/R$integer;->max_tap_to_text_views:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3098
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TapToTextTutoViews"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putInt(Ljava/lang/String;Ljava/lang/Integer;)Z

    .line 3100
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral$2;->this$1:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;

    iget-object v0, v0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$CallbackCentral;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewAt(IZZ)V

    .line 3101
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "NewsstandReplicaView"

    const-string v1, "TapToText"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
