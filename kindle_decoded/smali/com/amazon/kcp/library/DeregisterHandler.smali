.class public final Lcom/amazon/kcp/library/DeregisterHandler;
.super Ljava/lang/Object;
.source "DeregisterHandler.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

.field private static final TAG:Ljava/lang/String;

.field private static afterSaveInstanceState:Z

.field private static final androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field public static fragmentWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field public static logoutSpinner:Landroidx/fragment/app/DialogFragment;

.field private static final logoutSuccess:Lcom/amazon/foundation/ICallback;

.field private static final mapLogoutFailure:Lcom/amazon/foundation/IStringCallback;

.field private static pendingUIUpdateAfterLogout:Z

.field private static final updateUIAfterLogout:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-direct {v0}, Lcom/amazon/kcp/library/DeregisterHandler;-><init>()V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler;

    .line 29
    const-class v0, Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(DeregisterHandler::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->TAG:Ljava/lang/String;

    .line 30
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    .line 102
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler$logoutSuccess$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$logoutSuccess$1;

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->logoutSuccess:Lcom/amazon/foundation/ICallback;

    .line 125
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler$mapLogoutFailure$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$mapLogoutFailure$1;

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->mapLogoutFailure:Lcom/amazon/foundation/IStringCallback;

    .line 150
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler$updateUIAfterLogout$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$updateUIAfterLogout$1;

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->updateUIAfterLogout:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAndroidApplicationController$p(Lcom/amazon/kcp/library/DeregisterHandler;)Lcom/amazon/kcp/application/IAndroidApplicationController;
    .locals 0

    .line 28
    sget-object p0, Lcom/amazon/kcp/library/DeregisterHandler;->androidApplicationController:Lcom/amazon/kcp/application/IAndroidApplicationController;

    return-object p0
.end method

.method public static final synthetic access$getLogoutSuccess$p(Lcom/amazon/kcp/library/DeregisterHandler;)Lcom/amazon/foundation/ICallback;
    .locals 0

    .line 28
    sget-object p0, Lcom/amazon/kcp/library/DeregisterHandler;->logoutSuccess:Lcom/amazon/foundation/ICallback;

    return-object p0
.end method

.method public static final synthetic access$getMapLogoutFailure$p(Lcom/amazon/kcp/library/DeregisterHandler;)Lcom/amazon/foundation/IStringCallback;
    .locals 0

    .line 28
    sget-object p0, Lcom/amazon/kcp/library/DeregisterHandler;->mapLogoutFailure:Lcom/amazon/foundation/IStringCallback;

    return-object p0
.end method

.method public static final synthetic access$getUpdateUIAfterLogout$p(Lcom/amazon/kcp/library/DeregisterHandler;)Ljava/lang/Runnable;
    .locals 0

    .line 28
    sget-object p0, Lcom/amazon/kcp/library/DeregisterHandler;->updateUIAfterLogout:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$onDeregisterClickedAsync(Lcom/amazon/kcp/library/DeregisterHandler;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/library/DeregisterHandler;->onDeregisterClickedAsync()V

    return-void
.end method

.method private final onDeregisterClickedAsync()V
    .locals 3

    .line 84
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->logout_progress:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/SpinnerDialogFragment;->newInstance(IZ)Lcom/amazon/kcp/library/SpinnerDialogFragment;

    move-result-object v0

    const-string v1, "SpinnerDialogFragment.ne\u2026ng.logout_progress, true)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->logoutSpinner:Landroidx/fragment/app/DialogFragment;

    .line 85
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->fragmentWeakRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 86
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 87
    sget-object v2, Lcom/amazon/kcp/library/DeregisterHandler;->logoutSpinner:Landroidx/fragment/app/DialogFragment;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "SettingsFragment_SpinnerDialog"

    invoke-virtual {v2, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "logoutSpinner"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    .line 89
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->TAG:Ljava/lang/String;

    const-string v1, "fragment and fragment.fragmentManager shouldn\'t be null"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-class v0, Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    .line 97
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAnnotationsManager()Lcom/amazon/kindle/annotation/IAnnotationsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/library/DeregisterHandler$onDeregisterClickedAsync$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$onDeregisterClickedAsync$1;

    const-string v2, "UploadJournalWhenDeregister"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->syncJournalAsync(Ljava/lang/String;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    return-void

    :cond_2
    const-string v0, "fragmentWeakRef"

    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final deregisterDevice()V
    .locals 11

    .line 50
    const-class v0, Lcom/amazon/kcp/library/DeregisterHandler;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v1

    .line 51
    sget-object v2, Lcom/amazon/kcp/library/DeregisterHandler;->fragmentWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    const-string v3, "authManager"

    .line 52
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    new-instance v1, Lcom/amazon/kcp/library/LogoutDialogFragment;

    invoke-direct {v1}, Lcom/amazon/kcp/library/LogoutDialogFragment;-><init>()V

    .line 54
    sget-object v3, Lcom/amazon/kcp/library/DeregisterHandler$deregisterDevice$1;->INSTANCE:Lcom/amazon/kcp/library/DeregisterHandler$deregisterDevice$1;

    invoke-virtual {v1, v3}, Lcom/amazon/kcp/library/LogoutDialogFragment;->setDeregisterClickHandler(Lcom/amazon/kcp/library/LogoutDialogFragment$DeregisterHandler;)V

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "SettingsFragment_Logout"

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 58
    :cond_0
    sget-object v1, Lcom/amazon/kcp/library/DeregisterHandler;->TAG:Ljava/lang/String;

    const-string v2, "fragment shouldn\'t be null"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 65
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "com.amazon.account"

    invoke-virtual/range {v3 .. v10}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0

    .line 67
    :cond_2
    sget-object v1, Lcom/amazon/kcp/library/DeregisterHandler;->TAG:Ljava/lang/String;

    const-string v2, "fragment and fragment.context shouldn\'t be null"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_3
    const-string v0, "fragmentWeakRef"

    .line 51
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final doPendingUpdate()V
    .locals 2

    const/4 v0, 0x0

    .line 171
    sput-boolean v0, Lcom/amazon/kcp/library/DeregisterHandler;->afterSaveInstanceState:Z

    .line 172
    sget-boolean v1, Lcom/amazon/kcp/library/DeregisterHandler;->pendingUIUpdateAfterLogout:Z

    if-eqz v1, :cond_0

    .line 173
    sput-boolean v0, Lcom/amazon/kcp/library/DeregisterHandler;->pendingUIUpdateAfterLogout:Z

    .line 174
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->updateUIAfterLogout:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final getAfterSaveInstanceState()Z
    .locals 1

    .line 32
    sget-boolean v0, Lcom/amazon/kcp/library/DeregisterHandler;->afterSaveInstanceState:Z

    return v0
.end method

.method public final getFragmentWeakRef()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 34
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->fragmentWeakRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "fragmentWeakRef"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getLogoutSpinner()Landroidx/fragment/app/DialogFragment;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->logoutSpinner:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "logoutSpinner"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final setAfterSaveInstanceState(Z)V
    .locals 0

    .line 32
    sput-boolean p1, Lcom/amazon/kcp/library/DeregisterHandler;->afterSaveInstanceState:Z

    return-void
.end method

.method public final setCurrentFragment(Landroidx/fragment/app/Fragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/amazon/kcp/library/DeregisterHandler;->fragmentWeakRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final setPendingUIUpdateAfterLogout(Z)V
    .locals 0

    .line 33
    sput-boolean p1, Lcom/amazon/kcp/library/DeregisterHandler;->pendingUIUpdateAfterLogout:Z

    return-void
.end method
