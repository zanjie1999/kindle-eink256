.class public final Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;
.super Landroidx/fragment/app/Fragment;
.source "MrprBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$Companion;
    }
.end annotation


# static fields
.field private static final CHEVRON_WIDTH:F = 16.0f

.field private static final WAYPOINT_OFFSET:F = 21.0f

.field private static final WAYPOINT_RADIUS:F = 4.0f


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

.field private bookLine:Landroid/view/View;

.field private button:Landroid/widget/Button;

.field private currentPositionChevron:Landroid/widget/ImageView;

.field private currentPositionLine:Landroid/view/View;

.field private density:F

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private eventHandler:Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;

.field private footerLabel:Landroid/widget/TextView;

.field private lastUpdatedLabel:Landroid/widget/TextView;

.field private progressBarView:Landroid/widget/RelativeLayout;

.field private stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

.field private waypoint:Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static final synthetic access$navigateBetweenLocalAndMrpr(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->navigateBetweenLocalAndMrpr(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method

.method private final generateLastUpdatedText(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 10

    const-string v0, "MrprCurrDeviceName"

    .line 307
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MrprSrcDeviceName"

    .line 308
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MrprSetTime"

    .line 309
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "MrprLocalTimeOffset"

    .line 310
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 312
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v6, 0x1

    xor-int/2addr p1, v6

    if-nez p1, :cond_0

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-nez v9, :cond_0

    .line 315
    sget p1, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_read_fallback:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.mrpr_\u2026st_updated_read_fallback)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 319
    :cond_0
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    sget p1, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_this_device:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.mrpr_\u2026last_updated_this_device)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    if-eqz v1, :cond_2

    goto :goto_0

    .line 324
    :cond_2
    sget p1, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_another_device:I

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string p1, "getString(R.string.mrpr_\u2026t_updated_another_device)"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 327
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v2, v3, v4, v5, p1}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->getTimeReferenceString(JJLandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 329
    sget v0, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_last_updated_read_description:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object v1, v2, v6

    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(R.string.mrpr_\u2026enceString, deviceString)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getTranslationPixelsFromPos(ILcom/amazon/android/docviewer/KindleDoc;)I
    .locals 1

    int-to-float p1, p1

    .line 394
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    .line 396
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->bookLine:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    div-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_0
    const-string p1, "bookLine"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method private final navigateBetweenLocalAndMrpr(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 11

    .line 202
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    const-string v1, "stateManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->isComingFromLastLocalPosition()Z

    move-result v0

    const/4 v3, 0x1

    const-string v4, "docViewer.document"

    if-eqz v0, :cond_4

    .line 204
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getMrprPosition()I

    move-result v0

    invoke-interface {p1, v0, v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(IZ)V

    .line 205
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->updateCurrentPositionToMrpr()V

    .line 207
    sget-object v5, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->MRPR_BOTTOM_SHEET:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    .line 208
    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->NAVIGATE_TO_MRPR:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    .line 209
    sget-object v7, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->AT_LOCAL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    .line 210
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 211
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 212
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getMrprPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 206
    invoke-static/range {v5 .. v10}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_0

    .line 212
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 205
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getLastLocalPosition()I

    move-result v0

    invoke-interface {p1, v0, v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->navigateToPosition(IZ)V

    .line 215
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->updateCurrentPositionToLastLocal()V

    .line 217
    sget-object v5, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->MRPR_BOTTOM_SHEET:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    .line 218
    sget-object v6, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->NAVIGATE_TO_LOCAL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    .line 219
    sget-object v7, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->AT_MRPR:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    .line 220
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 221
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getMrprPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 216
    invoke-static/range {v5 .. v10}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 224
    invoke-static {p0, p1, v0, v1, v2}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateComponents$default(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;ZILjava/lang/Object;)V

    return-void

    .line 222
    :cond_5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_6
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 214
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 203
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateComponents(Lcom/amazon/android/docviewer/KindleDocViewer;Z)V
    .locals 2

    .line 228
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    const-string v1, "doc"

    .line 229
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;

    move-result-object v1

    .line 232
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsPageLabels()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "pageLabelProvider"

    .line 233
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateLabelsWithPages(Lcom/amazon/android/docviewer/IPageLabelProvider;Lcom/amazon/android/docviewer/KindleDoc;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateLabelsWithLocations(Lcom/amazon/android/docviewer/KindleDoc;)V

    .line 238
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/widget/Button;->invalidate()V

    .line 239
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->footerLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    if-eqz p2, :cond_4

    .line 242
    invoke-direct {p0, v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateProgressBar(Lcom/amazon/android/docviewer/KindleDoc;)V

    .line 243
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->currentPositionLine:Landroid/view/View;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 244
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->currentPositionChevron:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 245
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->waypoint:Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    goto :goto_1

    :cond_1
    const-string p1, "waypoint"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    const-string p1, "currentPositionChevron"

    .line 244
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_3
    const-string p1, "currentPositionLine"

    .line 243
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_1
    return-void

    :cond_5
    const-string p1, "footerLabel"

    .line 239
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string p1, "button"

    .line 238
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic updateComponents$default(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    .line 227
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateComponents(Lcom/amazon/android/docviewer/KindleDocViewer;Z)V

    return-void
.end method

.method private final updateLabelsWithLocations(Lcom/amazon/android/docviewer/KindleDoc;)V
    .locals 8

    .line 278
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    const-string v1, "stateManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->isComingFromLastLocalPosition()Z

    move-result v0

    const-string v3, "button"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_3

    .line 279
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getCurrPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    .line 280
    iget-object v6, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getMrprPosition()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    .line 282
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    if-eqz v1, :cond_0

    sget v3, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_button_go_to_location:I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v3, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 280
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 279
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getCurrPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result v0

    .line 285
    iget-object v6, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getLastLocalPosition()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/KindleDoc;->userLocationFromPosition(I)I

    move-result p1

    .line 287
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    if-eqz v1, :cond_6

    sget v3, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_button_return_to_location:I

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {p0, v3, v6}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 290
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->footerLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    sget v2, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_footer_location:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sub-int/2addr p1, v0

    if-nez p1, :cond_4

    .line 296
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 298
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-le v0, v5, :cond_4

    .line 299
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    :cond_4
    return-void

    :cond_5
    const-string p1, "footerLabel"

    .line 290
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 285
    :cond_7
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 284
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 278
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateLabelsWithPages(Lcom/amazon/android/docviewer/IPageLabelProvider;Lcom/amazon/android/docviewer/KindleDoc;)V
    .locals 7

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    const-string v1, "stateManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->isComingFromLastLocalPosition()Z

    move-result v0

    const-string v3, "button"

    const-string v4, "labelProvider.getPageLab\u2026tateManager.currPosition)"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 254
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getCurrPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v4, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getMrprPosition()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "labelProvider.getPageLab\u2026tateManager.mrprPosition)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    if-eqz v1, :cond_0

    sget v3, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_button_go_to_page:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 255
    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 254
    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getCurrPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getLastLocalPosition()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/IPageLabelProvider;->getPageLabelForPosition(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "labelProvider.getPageLab\u2026anager.lastLocalPosition)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 262
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    if-eqz v1, :cond_7

    sget v3, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_button_return_to_page:I

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-virtual {p0, v3, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 265
    :goto_0
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->footerLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    sget v2, Lcom/amazon/kindle/krl/R$string;->mrpr_bottom_sheet_footer_page:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object p1, v3, v6

    invoke-virtual {p0, v2, v3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v1, ""

    .line 269
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 270
    :cond_4
    invoke-direct {p0, p2}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateLabelsWithLocations(Lcom/amazon/android/docviewer/KindleDoc;)V

    :cond_5
    return-void

    :cond_6
    const-string p1, "footerLabel"

    .line 265
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 262
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 260
    :cond_8
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 259
    :cond_9
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2

    .line 253
    :cond_a
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v2
.end method

.method private final updateProgressBar(Lcom/amazon/android/docviewer/KindleDoc;)V
    .locals 10

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->mrpr_bottom_sheet_progress_bar_divider_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 334
    iget v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->density:F

    const/high16 v2, 0x41000000    # 8.0f

    mul-float v2, v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x41800000    # 16.0f

    mul-float v1, v1, v3

    float-to-int v1, v1

    .line 337
    iget-object v3, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    const-string v4, "stateManager"

    const/4 v5, 0x0

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getLastVisitedPosition()I

    move-result v3

    invoke-direct {p0, v3, p1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->getTranslationPixelsFromPos(ILcom/amazon/android/docviewer/KindleDoc;)I

    move-result v3

    .line 339
    iget-object v6, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v6, :cond_12

    invoke-virtual {v6}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->isComingFromLastLocalPosition()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 340
    iget-object v6, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getMrprPosition()I

    move-result v6

    invoke-direct {p0, v6, p1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->getTranslationPixelsFromPos(ILcom/amazon/android/docviewer/KindleDoc;)I

    move-result v6

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 342
    :cond_1
    iget-object v6, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v6, :cond_11

    invoke-virtual {v6}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getLastLocalPosition()I

    move-result v6

    invoke-direct {p0, v6, p1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->getTranslationPixelsFromPos(ILcom/amazon/android/docviewer/KindleDoc;)I

    move-result v6

    :goto_0
    sub-int v7, v1, v2

    .line 348
    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    neg-int v7, v1

    .line 351
    div-int/lit8 v7, v7, 0x2

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 352
    iget-object v7, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->bookLine:Landroid/view/View;

    const-string v8, "bookLine"

    if-eqz v7, :cond_10

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v9, v1, 0x2

    sub-int/2addr v7, v9

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    neg-int v7, v2

    .line 354
    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 355
    iget-object v7, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->bookLine:Landroid/view/View;

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    div-int/lit8 v8, v2, 0x2

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 357
    iget-object v7, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->isMrprAfterLastLocal()Z

    move-result v7

    iget-object v8, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v8, :cond_d

    invoke-virtual {v8}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->isComingFromLastLocalPosition()Z

    move-result v4

    xor-int/2addr v4, v7

    add-int/2addr v2, v6

    if-gt v3, v2, :cond_3

    add-int/2addr v1, v3

    if-gt v6, v1, :cond_3

    .line 363
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-eqz v4, :cond_2

    sub-int/2addr v6, v1

    add-int/2addr v3, v1

    goto :goto_1

    :cond_2
    sub-int/2addr v3, v1

    add-int/2addr v6, v1

    .line 374
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->currentPositionLine:Landroid/view/View;

    const-string v2, "currentPositionLine"

    if-eqz v1, :cond_c

    invoke-virtual {v1, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 375
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->currentPositionLine:Landroid/view/View;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 377
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->currentPositionChevron:Landroid/widget/ImageView;

    const-string v2, "currentPositionChevron"

    if-eqz v1, :cond_a

    int-to-float v3, v3

    int-to-float v0, v0

    add-float/2addr v3, v0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setTranslationX(F)V

    const/4 v1, 0x1

    if-ne v4, v1, :cond_4

    .line 380
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->mrpr_bottom_sheet_backward_chevron:I

    goto :goto_2

    :cond_4
    if-nez v4, :cond_9

    .line 381
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->mrpr_bottom_sheet_forward_chevron:I

    .line 384
    :goto_2
    iget-object v3, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->currentPositionChevron:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 386
    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->waypoint:Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;

    if-eqz v1, :cond_7

    int-to-float v2, v6

    add-float/2addr v2, v0

    const/high16 v0, 0x41a80000    # 21.0f

    iget v3, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->density:F

    mul-float v0, v0, v3

    const/high16 v4, 0x40800000    # 4.0f

    mul-float v3, v3, v4

    invoke-virtual {v1, v2, v0, v3}, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->updatePosition(FFF)V

    .line 388
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const-string v0, "doc.bookInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne p1, v0, :cond_6

    .line 389
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->progressBarView:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_5

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setScaleX(F)V

    goto :goto_3

    :cond_5
    const-string p1, "progressBarView"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_6
    :goto_3
    return-void

    :cond_7
    const-string p1, "waypoint"

    .line 386
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 384
    :cond_8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 381
    :cond_9
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 377
    :cond_a
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 375
    :cond_b
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 374
    :cond_c
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 357
    :cond_d
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_e
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 355
    :cond_f
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 352
    :cond_10
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 342
    :cond_11
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 339
    :cond_12
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_13
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final getKindlerDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public final getStateManager()Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "stateManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 151
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 154
    instance-of v1, v0, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    .line 156
    invoke-interface {v0}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    goto :goto_0

    .line 158
    :cond_0
    instance-of v0, p1, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    if-eqz v0, :cond_1

    .line 159
    check-cast p1, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;

    invoke-interface {p1}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    .line 160
    invoke-interface {p1}, Lcom/amazon/kindle/fragment/ReaderFragmentDelegate;->getKindleDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 89
    sget p2, Lcom/amazon/kindle/krl/R$layout;->mrpr_bottom_sheet_dialog_layout:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 90
    sget p2, Lcom/amazon/kindle/krl/R$id;->mrpr_bottom_sheet_goto_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "bottomSheetView.findView\u2026bottom_sheet_goto_button)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    .line 92
    sget p2, Lcom/amazon/kindle/krl/R$id;->mrpr_bottom_sheet_footer_label:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "bottomSheetView.findView\u2026ottom_sheet_footer_label)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->footerLabel:Landroid/widget/TextView;

    .line 94
    sget p2, Lcom/amazon/kindle/krl/R$id;->mrpr_bottom_sheet_progress_bar:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "bottomSheetView.findView\u2026ottom_sheet_progress_bar)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/RelativeLayout;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->progressBarView:Landroid/widget/RelativeLayout;

    const-string v0, "progressBarView"

    if-eqz p2, :cond_10

    .line 95
    sget v1, Lcom/amazon/kindle/krl/R$id;->mrpr_bottom_sheet_book_line:I

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "progressBarView.findView\u2026r_bottom_sheet_book_line)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->bookLine:Landroid/view/View;

    .line 96
    iget-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->progressBarView:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_f

    sget v1, Lcom/amazon/kindle/krl/R$id;->mrpr_bottom_sheet_current_position_line:I

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "progressBarView.findView\u2026et_current_position_line)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->currentPositionLine:Landroid/view/View;

    .line 97
    iget-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->progressBarView:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_e

    sget v1, Lcom/amazon/kindle/krl/R$id;->mrpr_bottom_sheet_current_position_chevron:I

    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "progressBarView.findView\u2026current_position_chevron)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->currentPositionChevron:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v1, "resources"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->density:F

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "waypoint"

    if-eqz p2, :cond_2

    .line 103
    new-instance v2, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;

    invoke-direct {v2, p2}, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->waypoint:Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;

    const/4 v2, 0x1

    const/high16 v3, 0x41e80000    # 29.0f

    .line 105
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    .line 104
    invoke-static {v2, v3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 107
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x2

    float-to-int p2, p2

    invoke-direct {v2, v3, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 109
    iget-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->progressBarView:Landroid/widget/RelativeLayout;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->waypoint:Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;

    if-eqz v0, :cond_0

    invoke-virtual {p2, v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 112
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz p2, :cond_d

    if-eqz v0, :cond_d

    .line 116
    new-instance v2, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    invoke-static {p2}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->getCurrentPosition(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v3

    const-string v4, "FprMrprPosition"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;-><init>(II)V

    iput-object v2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    .line 117
    iget-object v2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    const-string v3, "button"

    if-eqz v2, :cond_c

    new-instance v4, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$1;

    invoke-direct {v4, p0, p2}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$1;-><init>(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v2, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$2;

    invoke-direct {v2, p0, p2}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$2;-><init>(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 123
    sget v2, Lcom/amazon/kindle/krl/R$id;->mrpr_bottom_sheet_last_updated_label:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v4, "bottomSheetView.findView\u2026sheet_last_updated_label)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->lastUpdatedLabel:Landroid/widget/TextView;

    const-string v4, "lastUpdatedLabel"

    if-eqz v2, :cond_b

    .line 124
    invoke-direct {p0, v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->generateLastUpdatedText(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    const-string v5, "isDarkTheme"

    .line 126
    invoke-virtual {v0, v5, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 127
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Lcom/amazon/kindle/krl/R$color;->mrpr_bottom_sheet_button_background_color_dark:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 128
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->button:Landroid/widget/Button;

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$color;->mrpr_bottom_sheet_button_text_color_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->bookLine:Landroid/view/View;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$color;->mrpr_bottom_sheet_book_line_color_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->lastUpdatedLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$color;->mrpr_bottom_sheet_text_color_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->footerLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$color;->mrpr_bottom_sheet_text_color_dark:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->waypoint:Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$color;->mrpr_bottom_sheet_waypoint_color_dark:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/fragment/MostRecentPageReadWaypointView;->setColor(I)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    :cond_4
    const-string p1, "footerLabel"

    .line 131
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 130
    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    :cond_6
    const-string p1, "bookLine"

    .line 129
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 128
    :cond_7
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 127
    :cond_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 136
    :cond_9
    :goto_1
    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->MRPR_BOTTOM_SHEET:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    .line 137
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->PRESENT_ALERT:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    .line 138
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->AT_LOCAL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    .line 139
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    const-string v4, "docViewer.document"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 140
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 141
    iget-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->getMrprPosition()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 135
    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_a
    const-string p1, "stateManager"

    .line 141
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 124
    :cond_b
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 117
    :cond_c
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    :cond_d
    const-string p2, "MRPR Bottom Sheet"

    const-string p3, "Bottom Sheet was launched with insufficient data to operate"

    .line 144
    invoke-static {p2, p3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-object p1

    .line 97
    :cond_e
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 96
    :cond_f
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3

    .line 95
    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw p3
.end method

.method public onDestroy()V
    .locals 2

    .line 165
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 167
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->annotationsManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kindle/krx/sync/LPRSyncType;->MRPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->clearServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    :cond_0
    return-void
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onKindleDocNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 402
    invoke-virtual {p0}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateCurrentPositionAndRefresh()V

    :cond_0
    return-void
.end method

.method public final onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 418
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->eventHandler:Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->closeBottomSheet(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;)Z

    :cond_0
    return-void
.end method

.method public final onReaderChromeInterceptEvent(Lcom/amazon/kindle/event/ReaderChromeInterceptEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->eventHandler:Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {p1}, Lcom/amazon/kindle/event/ReaderChromeInterceptEvent;->preventIntercept()V

    .line 412
    invoke-virtual {v0, p0}, Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;->closeBottomSheet(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;)Z

    :cond_0
    return-void
.end method

.method public final setEventHandler(Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->eventHandler:Lcom/amazon/kindle/fragment/MrprBottomSheetEventHandler;

    return-void
.end method

.method public final updateCurrentPositionAndRefresh()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 195
    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/LprMessageHelper;->getCurrentPosition(Lcom/amazon/android/docviewer/KindleDocViewer;)I

    move-result v1

    .line 196
    iget-object v2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->updateCurrentPosition(I)V

    const/4 v1, 0x0

    .line 197
    invoke-direct {p0, v0, v1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateComponents(Lcom/amazon/android/docviewer/KindleDocViewer;Z)V

    goto :goto_0

    :cond_0
    const-string v0, "stateManager"

    .line 196
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateMrprAndRefresh()V
    .locals 5

    .line 181
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 185
    iget-object v2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->lastUpdatedLabel:Landroid/widget/TextView;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->generateLastUpdatedText(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->stateManager:Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;

    if-eqz v2, :cond_0

    const-string v4, "FprMrprPosition"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/fragment/MrprBottomSheetStateManager;->updateMrprPosition(I)V

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 187
    invoke-static {p0, v0, v1, v2, v3}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateComponents$default(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;ZILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string v0, "stateManager"

    .line 186
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    const-string v0, "lastUpdatedLabel"

    .line 185
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    return-void
.end method
