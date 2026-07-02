.class final Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"

# interfaces
.implements Lcom/amazon/kindle/toast/ToastDismissHandler;


# instance fields
.field private final animator:Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;

.field private dismissListener:Lcom/amazon/kindle/toast/ToastDismissListener;

.field private final isDismissing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/toast/snackbar/Snackbar;Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;J)V
    .locals 1

    const-string/jumbo v0, "snackbar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "animator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    iput-object p2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->animator:Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;

    .line 182
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->isDismissing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 185
    sget-object p1, Lcom/amazon/kcp/debug/ToastAutoDismissUtils;->INSTANCE:Lcom/amazon/kcp/debug/ToastAutoDismissUtils;

    invoke-virtual {p1}, Lcom/amazon/kcp/debug/ToastAutoDismissUtils;->isToastAutoDismissUtilsEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 187
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    .line 189
    new-instance p2, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$1;

    invoke-direct {p2, p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$1;-><init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V

    .line 190
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 188
    invoke-interface {p1, p2, p3, p4, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->scheduleOnMainThread(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)V

    :cond_0
    return-void
.end method

.method public static final synthetic access$dismissSnackbar(Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V
    .locals 0

    .line 179
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->dismissSnackbar()V

    return-void
.end method

.method private final dismissSnackbar()V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->snackbar:Lcom/amazon/kindle/toast/snackbar/Snackbar;

    invoke-virtual {v0}, Lcom/amazon/kindle/toast/snackbar/Snackbar;->dismiss()V

    .line 232
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->dismissListener:Lcom/amazon/kindle/toast/ToastDismissListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/toast/ToastDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->isDismissing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->animator:Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;

    new-instance v1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$dismiss$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$dismiss$1;-><init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarAnimator;->hideWithCustomAnimation(Landroidx/core/view/ViewPropertyAnimatorListener;)V

    return-void
.end method

.method public final dismissWithoutAnimation()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->isDismissing:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->dismissSnackbar()V

    return-void
.end method

.method public setDismissListener(Lcom/amazon/kindle/toast/ToastDismissListener;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->dismissListener:Lcom/amazon/kindle/toast/ToastDismissListener;

    return-void
.end method

.method public setDismissListener(Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    new-instance v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$setDismissListener$1;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler$setDismissListener$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastDismissHandler;->setDismissListener(Lcom/amazon/kindle/toast/ToastDismissListener;)V

    return-void
.end method
