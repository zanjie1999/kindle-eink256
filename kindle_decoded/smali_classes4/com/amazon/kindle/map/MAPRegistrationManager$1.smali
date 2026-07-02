.class Lcom/amazon/kindle/map/MAPRegistrationManager$1;
.super Ljava/lang/Object;
.source "MAPRegistrationManager.java"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/map/MAPRegistrationManager;->showWebviewSignin(Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;Lcom/amazon/foundation/IStringCallback;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/map/MAPRegistrationManager;

.field final synthetic val$activity:Ljava/lang/ref/WeakReference;

.field final synthetic val$failureCallback:Lcom/amazon/foundation/IStringCallback;

.field final synthetic val$successCallback:Lcom/amazon/foundation/IStringCallback;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/map/MAPRegistrationManager;Lcom/amazon/foundation/IStringCallback;Ljava/lang/ref/WeakReference;Lcom/amazon/foundation/IStringCallback;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->this$0:Lcom/amazon/kindle/map/MAPRegistrationManager;

    iput-object p2, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$successCallback:Lcom/amazon/foundation/IStringCallback;

    iput-object p3, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$activity:Ljava/lang/ref/WeakReference;

    iput-object p4, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$failureCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 7

    .line 126
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;

    .line 127
    iget-object v1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$successCallback:Lcom/amazon/foundation/IStringCallback;

    const/4 v2, 0x0

    const-string v3, "EventsFastMetricsRecorder instance not found in discovery."

    if-eqz v1, :cond_1

    const-string v1, "com.amazon.dcp.sso.property.account.acctId"

    .line 130
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v0, :cond_0

    .line 133
    invoke-interface {v0}, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;->recordSuccessfulLogin()V

    goto :goto_0

    .line 135
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :goto_0
    iget-object v4, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$successCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-interface {v4, v1}, Lcom/amazon/foundation/IStringCallback;->execute(Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    new-instance v4, Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 139
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getDefaultDomain()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->access$000()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SignInSucceededWithError"

    .line 140
    invoke-virtual {v4, v5}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v4

    .line 141
    invoke-virtual {v4, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v4

    .line 138
    invoke-virtual {v1, v4}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 146
    iget-object v4, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$failureCallback:Lcom/amazon/foundation/IStringCallback;

    if-eqz v4, :cond_4

    if-eqz v1, :cond_4

    .line 148
    iget-object v4, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->this$0:Lcom/amazon/kindle/map/MAPRegistrationManager;

    invoke-virtual {v4, p1, v1}, Lcom/amazon/kindle/map/MAPRegistrationManager;->tryHandle3pLoginCode(Landroid/os/Bundle;Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 152
    :cond_2
    iget-object v4, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->this$0:Lcom/amazon/kindle/map/MAPRegistrationManager;

    invoke-static {v4, p1, v1}, Lcom/amazon/kindle/map/MAPRegistrationManager;->access$100(Lcom/amazon/kindle/map/MAPRegistrationManager;Landroid/os/Bundle;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    .line 155
    invoke-interface {v0, p1}, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;->recordFailedLogin(Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_1
    iget-object v0, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$failureCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-interface {v0, p1}, Lcom/amazon/foundation/IStringCallback;->execute(Ljava/lang/String;)V

    .line 160
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getDefaultDomain()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    const-string v1, "SignInFailed"

    .line 163
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->WARN:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 164
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setMetricType(Lcom/amazon/kindle/krx/metrics/MetricType;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v0

    .line 160
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    :cond_4
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "com.amazon.dcp.sso.property.account.acctId"

    .line 102
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->this$0:Lcom/amazon/kindle/map/MAPRegistrationManager;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/map/MAPRegistrationManager;->onRegisterAccountSuccess(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$successCallback:Lcom/amazon/foundation/IStringCallback;

    if-eqz v1, :cond_1

    .line 106
    const-class v1, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;

    if-eqz v1, :cond_0

    .line 108
    invoke-interface {v1}, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;->recordSuccessfulLogin()V

    goto :goto_0

    .line 110
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EventsFastMetricsRecorder instance not found in discovery."

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/map/MAPRegistrationManager$1;->val$successCallback:Lcom/amazon/foundation/IStringCallback;

    invoke-interface {v1, v0}, Lcom/amazon/foundation/IStringCallback;->execute(Ljava/lang/String;)V

    :cond_1
    const-string v0, "com.amazon.identity.auth.device.accountManager.newaccount"

    .line 115
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 117
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 118
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getDefaultDomain()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kindle/map/MAPRegistrationManager;->access$000()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/krx/metrics/MetricsData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 119
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/metrics/MetricsData;->setWithAppVersion(Z)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v1

    if-eqz p1, :cond_2

    const-string p1, "SignInNewAccount"

    goto :goto_1

    :cond_2
    const-string p1, "SignInExistingAccount"

    .line 120
    :goto_1
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object p1

    .line 117
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    return-void
.end method
