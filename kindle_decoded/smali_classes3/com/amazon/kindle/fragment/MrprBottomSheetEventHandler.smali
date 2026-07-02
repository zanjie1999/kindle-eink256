.class public final Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;
.super Ljava/lang/Object;
.source "MrprBottomSheetFragment.kt"

# interfaces
.implements Lcom/amazon/kindle/bottomsheet/BottomSheetBehaviourEventHandler;


# instance fields
.field private final SLIDE_OFFSET_THRESHOLD:F

.field private final fragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->fragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    const p1, 0x3ecccccd    # 0.4f

    .line 447
    iput p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->SLIDE_OFFSET_THRESHOLD:F

    return-void
.end method


# virtual methods
.method public final closeBottomSheet(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;)Z
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "BottomSheetPresenter"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 471
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 472
    sget v2, Lcom/amazon/kindle/krl/R$anim;->slide_in_bottom:I

    sget v3, Lcom/amazon/kindle/krl/R$anim;->slide_out_bottom:I

    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(II)Landroidx/fragment/app/FragmentTransaction;

    if-eqz v1, :cond_1

    .line 473
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    if-eqz v1, :cond_1

    .line 475
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onSlide(Landroid/view/View;F)V
    .locals 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 450
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->SLIDE_OFFSET_THRESHOLD:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_3

    .line 451
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->fragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    invoke-virtual {p1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->getKindlerDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    .line 452
    iget-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->fragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    invoke-virtual {p2}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->getStateManager()Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    move-result-object p2

    .line 454
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->MRPR_BOTTOM_SHEET:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    .line 455
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->SWIPE_DOWN_DISMISS:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    .line 456
    invoke-virtual {p2}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->isComingFromLastLocalPosition()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->AT_LOCAL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->AT_MRPR:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    :goto_0
    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 457
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz p1, :cond_2

    .line 458
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v3

    .line 459
    :goto_2
    invoke-virtual {p2}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getMrprPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, v4

    move-object v4, p1

    .line 453
    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 460
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->fragment:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->closeBottomSheet(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;)Z

    :cond_3
    return-void
.end method

.method public onStateChange(Landroid/view/View;I)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
