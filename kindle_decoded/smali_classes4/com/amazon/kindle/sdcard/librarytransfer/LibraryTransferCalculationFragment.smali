.class public final Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LibraryTransferCalculationFragment.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;

.field private calculateThreadFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 25
    const-class v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(LibraryTran\u2026tionFragment::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getCalculateThreadFuture$p(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)Ljava/util/concurrent/Future;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->calculateThreadFuture:Ljava/util/concurrent/Future;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "calculateThreadFuture"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)Ljava/lang/String;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$removeThisFragment(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->removeThisFragment()V

    return-void
.end method

.method public static final synthetic access$showTransferDialogFragment(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->showTransferDialogFragment()V

    return-void
.end method

.method private final removeThisFragment()V
    .locals 1

    .line 76
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method

.method private final showTransferDialogFragment()V
    .locals 3

    .line 68
    new-instance v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;

    invoke-direct {v0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferDialogFragment;-><init>()V

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "TRANSFER_DIALOG"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 61
    iget-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->calculateThreadFuture:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    return-void

    :cond_0
    const-string p1, "calculateThreadFuture"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 28
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    sget p1, Lcom/amazon/kindle/krl/R$style;->Theme_AppCompat_Dialog_LibraryTransferCalculationDimmed:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 32
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$1;->INSTANCE:Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$1;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string v0, "ThreadPoolManager.getIns\u2026ulateTransfer()\n        }"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->calculateThreadFuture:Ljava/util/concurrent/Future;

    .line 36
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment$onCreate$2;-><init>(Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;)V

    .line 51
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    .line 36
    invoke-interface {p1, v0, v2, v3, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    sget p3, Lcom/amazon/kindle/krl/R$layout;->transfer_library_progress_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026layout, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/sdcard/librarytransfer/LibraryTransferCalculationFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method
