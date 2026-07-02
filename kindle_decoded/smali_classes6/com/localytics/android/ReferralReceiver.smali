.class public Lcom/localytics/android/ReferralReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ReferralReceiver.java"


# instance fields
.field protected appKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/localytics/android/ReferralReceiver;->appKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 39
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 41
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/localytics/android/ReferralReceiver;->appKey:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 55
    :cond_2
    invoke-static {p1}, Lcom/localytics/android/DatapointHelper;->getLocalyticsAppKeyOrNull(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/localytics/android/ReferralReceiver;->appKey:Ljava/lang/String;

    .line 59
    :cond_3
    iget-object v0, p0, Lcom/localytics/android/ReferralReceiver;->appKey:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "referrer"

    .line 64
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/localytics/android/ReferralReceiver;->appKey:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/localytics/android/LocalyticsProvider;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsProvider;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/localytics/android/ReferralReceiver$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/localytics/android/ReferralReceiver$1;-><init>(Lcom/localytics/android/ReferralReceiver;Ljava/lang/String;Lcom/localytics/android/LocalyticsProvider;)V

    invoke-virtual {p1, v0}, Lcom/localytics/android/LocalyticsProvider;->runBatchTransaction(Ljava/lang/Runnable;)V

    :catch_0
    :cond_6
    :goto_0
    return-void
.end method
