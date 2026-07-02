.class final Lcom/amazon/kcp/library/DeregisterHandler$logoutSuccess$1;
.super Ljava/lang/Object;
.source "DeregisterHandler.kt"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/DeregisterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$logoutSuccess$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/library/DeregisterHandler$logoutSuccess$1;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeregisterHandler$logoutSuccess$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler$logoutSuccess$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$logoutSuccess$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 3

    .line 107
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->getFragmentWeakRef()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/DeregisterHandler;->getAfterSaveInstanceState()Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-static {v2}, Lcom/amazon/kcp/library/DeregisterHandler;->access$getUpdateUIAfterLogout$p(Lcom/amazon/kcp/library/DeregisterHandler;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 111
    :cond_0
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/DeregisterHandler;->setPendingUIUpdateAfterLogout(Z)V

    .line 114
    :cond_1
    :goto_0
    const-class v0, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;

    if-eqz v0, :cond_2

    .line 116
    invoke-interface {v0}, Lcom/amazon/kcp/util/fastmetrics/appevents/EventsFastMetricsRecorder;->recordSuccessfulLogout()V

    goto :goto_1

    .line 118
    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EventsFastMetricsRecorder instance not found in discovery."

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_1
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/DeregisterHandler;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Logout succeeded, dismissing spinner and updating UI"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v2, "Utils.getFactory().getAuthenticationManager()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/amazon/kcp/application/pages/internal/DeregisterPage;->deregisterLocallyOnly(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kindle/services/authentication/IAccountInfo;Z)V

    return-void
.end method
