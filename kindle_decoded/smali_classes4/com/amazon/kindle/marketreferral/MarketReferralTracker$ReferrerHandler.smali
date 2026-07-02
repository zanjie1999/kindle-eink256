.class public Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;
.super Landroid/os/AsyncTask;
.source "MarketReferralTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/marketreferral/MarketReferralTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReferrerHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private referrer:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->referrer:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->context:Landroid/content/Context;

    .line 70
    iput-object p1, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->referrer:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 65
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .line 77
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 79
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "InstallReferralPrefs"

    iget-object v1, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAndroidSharedPreferences(Ljava/lang/String;ILandroid/content/Context;)Lcom/amazon/kindle/persistence/AndroidSharedPreferences;

    move-result-object p1

    const-string v0, "referrer"

    .line 80
    iget-object v1, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->referrer:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kindle/persistence/AndroidSharedPreferences;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    .line 81
    invoke-static {}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->access$000()Ljava/lang/String;

    .line 83
    iget-object p1, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->referrer:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->getQueryMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler$1;-><init>(Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;Ljava/util/Map;)V

    new-array v1, v2, [Ljava/lang/Void;

    .line 92
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    iget-object v0, p0, Lcom/amazon/kindle/marketreferral/MarketReferralTracker$ReferrerHandler;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->handleReferralTag(Landroid/content/Context;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 97
    invoke-static {}, Lcom/amazon/kindle/marketreferral/MarketReferralTracker;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MarketReferralTracker: Unable to save referral url to shared-preferences"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
