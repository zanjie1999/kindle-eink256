.class Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper$1;
.super Ljava/lang/Object;
.source "StoreFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;->getOptions()Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/store/StoreFragment$StoreWebViewHelper;)V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 510
    invoke-static {}, Lcom/amazon/kindle/trial/TrialModeMetricsManager;->getInstance()Lcom/amazon/kindle/trial/TrialModeMetrics;

    move-result-object v0

    .line 511
    sget-object v1, Lcom/amazon/kindle/trial/SignInLocation;->STORE:Lcom/amazon/kindle/trial/SignInLocation;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/trial/TrialModeMetrics;->customerRequestedSignIn(Lcom/amazon/kindle/trial/SignInLocation;)V

    return-void
.end method
