.class final Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GooglePlayInstallReferralHandler.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->checkAndHandleReferral()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;->this$0:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;->this$0:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->hasStoredReferrer$ThirdPartyCore_release()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;->this$0:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->hasApiBeenCalled$ThirdPartyCore_release()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;->this$0:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    invoke-static {v0}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->access$getInstallReferrerClientFactory$p(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;->this$0:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    invoke-static {v1}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->access$getContext$p(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 75
    new-instance v1, Lcom/amazon/kcp/redding/ReferralStateListener;

    iget-object v2, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;->this$0:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    invoke-static {v2}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->access$getContext$p(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler$checkAndHandleReferral$1;->this$0:Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;

    invoke-static {v3}, Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;->access$getMetricsManager$p(Lcom/amazon/kcp/redding/GooglePlayInstallReferralHandler;)Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/amazon/kcp/redding/ReferralStateListener;-><init>(Landroid/content/Context;Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/amazon/kindle/krx/metrics/IMetricsManager;)V

    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V

    :cond_0
    return-void
.end method
