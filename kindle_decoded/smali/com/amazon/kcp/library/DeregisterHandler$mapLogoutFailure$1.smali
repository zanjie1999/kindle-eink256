.class final Lcom/amazon/kcp/library/DeregisterHandler$mapLogoutFailure$1;
.super Ljava/lang/Object;
.source "DeregisterHandler.kt"

# interfaces
.implements Lcom/amazon/foundation/IStringCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/DeregisterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$mapLogoutFailure$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/DeregisterHandler$mapLogoutFailure$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeregisterHandler$mapLogoutFailure$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler$mapLogoutFailure$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$mapLogoutFailure$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/String;)V
    .locals 3

    .line 126
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->getLogoutSpinner()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 127
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->getFragmentWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 129
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->error:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fragment.getString(R.string.error)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1080027

    .line 130
    invoke-static {v1, p1, v2}, Lcom/amazon/kcp/library/ConfirmationDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;I)Lcom/amazon/kcp/library/ConfirmationDialogFragment;

    move-result-object v1

    .line 131
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "SettingsFragment_LogoutError"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 132
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p1}, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;->recordFailedLogout(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object p1, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/DeregisterHandler;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EventsFastMetricsRecorder instance not found in discovery."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    .line 139
    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricsData;

    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "MetricsManager.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/DeregisterHandler;->getTAG()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 140
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v1, "LogOutFailed"

    .line 141
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 142
    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 138
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    goto :goto_1

    .line 145
    :cond_1
    sget-object p1, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/DeregisterHandler;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fragment shouldn\'t be null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object p1, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
