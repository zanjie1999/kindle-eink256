.class public final Lcom/amazon/kcp/redding/ReferralStateListener;
.super Ljava/lang/Object;
.source "GooglePlayInstallReferralHandler.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# instance fields
.field private final context:Landroid/content/Context;

.field private final metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

.field private final prefs:Landroid/content/SharedPreferences;

.field private final referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "referrerClient"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    iput-object p3, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    const-string p2, "InstallReferralPrefs"

    const/4 p3, 0x0

    .line 105
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->prefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method private final handleReferrerDetails(Lcom/android/installreferrer/api/ReferrerDetails;)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    move-result-object p1

    const-string v0, "details.installReferrer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got referral details from Play Referral API: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/redding/ReferralStateListener;->submitToMarketReferralTracker$ThirdPartyCore_release(Ljava/lang/String;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 0

    .line 148
    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReferralStateListener;->recordApiHasBeenCalled$ThirdPartyCore_release()Landroid/content/SharedPreferences$Editor;

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayReferralApiNotSupported"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayReferralServiceUnavailable"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    .line 116
    iget-object p1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    move-result-object p1

    const-string v0, "referrerClient.installReferrer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/amazon/kcp/redding/ReferralStateListener;->handleReferrerDetails(Lcom/android/installreferrer/api/ReferrerDetails;)V

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReferralStateListener;->recordApiHasBeenCalled$ThirdPartyCore_release()Landroid/content/SharedPreferences$Editor;

    .line 118
    iget-object p1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayStoreReferral"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayReferral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to notify the setup of a connection to the Play Referrer service is complete."

    invoke-static {v1, v2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    iget-object p1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->metricsManager:Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    invoke-static {}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandlerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final recordApiHasBeenCalled$ThirdPartyCore_release()Landroid/content/SharedPreferences$Editor;
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "playReferralApiHasBeenCalled"

    const/4 v2, 0x1

    .line 167
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 168
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method

.method public final submitToMarketReferralTracker$ThirdPartyCore_release(Ljava/lang/String;)Landroid/os/AsyncTask;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "referralData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;

    iget-object v1, p0, Lcom/amazon/kcp/redding/ReferralStateListener;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object p1

    return-object p1
.end method
