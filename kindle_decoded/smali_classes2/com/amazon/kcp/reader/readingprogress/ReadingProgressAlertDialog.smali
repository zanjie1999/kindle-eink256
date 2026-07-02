.class public abstract Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "ReadingProgressAlertDialog.kt"

# interfaces
.implements Lcom/amazon/kcp/reader/readingprogress/IReadingProgressDialog;


# instance fields
.field private final annotationsManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

.field private final bundle:Landroid/os/Bundle;

.field private final dialogMetricsRecorder:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

.field private final id:I

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private final syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;


# direct methods
.method public constructor <init>(ILcom/amazon/kcp/reader/ReaderActivity;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "readerActivity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bundle"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p2}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    iput p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->id:I

    iput-object p2, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-object p3, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->bundle:Landroid/os/Bundle;

    .line 36
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    const-string p2, "readerActivity.docViewer"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    iput-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->annotationsManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    .line 37
    sget-object p1, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->Companion:Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/DialogMetricsRecorder$Companion;->getInstance()Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->dialogMetricsRecorder:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string p2, "Utils.getFactory()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 39
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->bundle:Landroid/os/Bundle;

    const-string p2, "LprSyncType"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "bundle.getString(ReaderA\u2026(\"Missing LPR_SYNC_TYPE\")"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amazon/kindle/krx/sync/LPRSyncType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/sync/LPRSyncType;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    .line 42
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->reportSyncDirectionMetric$KindleReaderLibrary_release()V

    .line 44
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->updateData()V

    .line 46
    invoke-virtual {p0}, Landroid/app/Dialog;->create()V

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Missing LPR_SYNC_TYPE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 36
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "null cannot be cast to non-null type com.amazon.android.docviewer.annotations.DefaultDocViewerAnnotationManager"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final onDialogClose()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->annotationsManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getBookAnnotationsManager()Lcom/amazon/kindle/annotation/IBookAnnotationsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/annotation/IBookAnnotationsManager;->clearServerReadingPosition(Lcom/amazon/kindle/krx/sync/LPRSyncType;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    iget v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->id:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->removeDialog(I)V

    return-void
.end method


# virtual methods
.method public final getBundle()Landroid/os/Bundle;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->bundle:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getDialogMetricsRecorder$KindleReaderLibrary_release()Lcom/amazon/kcp/reader/DialogMetricsRecorder;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->dialogMetricsRecorder:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    return-object v0
.end method

.method public final getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-object v0
.end method

.method public onAccept(Landroid/content/DialogInterface;)V
    .locals 9

    .line 90
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->bundle:Landroid/os/Bundle;

    const-string v0, "FprMrprPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 92
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->annotationsManager:Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->forceNextLprToHavePosition(I)V

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v3, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v2, v3, :cond_1

    const-string v2, "SyncFurthestPageRead"

    goto :goto_1

    :cond_1
    const-string v2, "SyncMostRecentPage"

    :goto_1
    if-eqz v0, :cond_2

    .line 98
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getPositionFactory()Lcom/amazon/kindle/krx/reader/IPositionFactory;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/amazon/kindle/krx/reader/IPositionFactory;->createFromInt(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v0, v3, v4, v2}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->goToPosition(Lcom/amazon/kindle/krx/reader/IPosition;ZLjava/lang/String;)V

    .line 101
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    const-string v3, "readerActivity.docViewer"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 103
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->dialogMetricsRecorder:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    iget-object v3, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v4, Lcom/amazon/kcp/reader/DialogAction;->SYNC:Lcom/amazon/kcp/reader/DialogAction;

    invoke-virtual {v2, v3, v4}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->reportLprSyncAction(Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/reader/DialogAction;)V

    .line 106
    iget-object v2, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v3, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v2, v3, :cond_4

    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->FPR_DIALOG:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    goto :goto_2

    :cond_4
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->MRPR_DIALOG:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    :goto_2
    move-object v3, v2

    .line 107
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->SYNC:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    .line 108
    sget-object v5, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->NOT_APPLICABLE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    if-eqz v0, :cond_5

    .line 109
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v6, v2

    goto :goto_3

    :cond_5
    move-object v6, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 110
    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_6
    move-object v7, v1

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 105
    invoke-static/range {v3 .. v8}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 114
    invoke-direct {p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->onDialogClose()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 8

    .line 121
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 122
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->dialogMetricsRecorder:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v1, Lcom/amazon/kcp/reader/DialogAction;->CANCEL:Lcom/amazon/kcp/reader/DialogAction;

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->reportLprSyncAction(Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/reader/DialogAction;)V

    .line 124
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 126
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v2, Lcom/amazon/kindle/krx/sync/LPRSyncType;->FPR:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->FPR_DIALOG:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;->MRPR_DIALOG:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;

    :goto_1
    move-object v2, v1

    .line 127
    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->CANCEL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    .line 128
    sget-object v4, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->NOT_APPLICABLE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    if-eqz p1, :cond_2

    .line 129
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object v5, v1

    goto :goto_2

    :cond_2
    move-object v5, v0

    :goto_2
    if-eqz p1, :cond_3

    .line 130
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentPageEndPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3
    move-object v6, v0

    .line 131
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->bundle:Landroid/os/Bundle;

    const-string v0, "FprMrprPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 125
    invoke-static/range {v2 .. v7}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$AlertType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 134
    invoke-direct {p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->onDialogClose()V

    :cond_4
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 2

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p1, v0, :cond_1

    .line 76
    sget p1, Lcom/amazon/kindle/krl/R$color;->inbook_dialog_button_text_color_dark:I

    goto :goto_1

    .line 78
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$color;->inbook_dialog_button_text_color_light:I

    .line 80
    :goto_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    const/4 v0, -0x1

    .line 82
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, -0x2

    .line 83
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public final reportSyncDirectionMetric$KindleReaderLibrary_release()V
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const-string v1, "readerActivity.docViewer"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 156
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->bundle:Landroid/os/Bundle;

    const-string v2, "FprMrprPosition"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->dialogMetricsRecorder:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v2, Lcom/amazon/kcp/reader/DialogDirection;->FORWARD:Lcom/amazon/kcp/reader/DialogDirection;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->reportLprSyncDirection(Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/reader/DialogDirection;)V

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    .line 160
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->dialogMetricsRecorder:Lcom/amazon/kcp/reader/DialogMetricsRecorder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->syncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    sget-object v2, Lcom/amazon/kcp/reader/DialogDirection;->BACKWARD:Lcom/amazon/kcp/reader/DialogDirection;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/DialogMetricsRecorder;->reportLprSyncDirection(Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kcp/reader/DialogDirection;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateData()V
    .locals 4

    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setIcon(I)V

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->bundle:Landroid/os/Bundle;

    const-string v1, "FprMrprMessage"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;->readerActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    sget v1, Lcom/amazon/kindle/krl/R$string;->yes:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog$updateData$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog$updateData$1;-><init>(Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;)V

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1, v2}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    sget v1, Lcom/amazon/kindle/krl/R$string;->no:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog$updateData$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog$updateData$2;-><init>(Lcom/amazon/kcp/reader/readingprogress/ReadingProgressAlertDialog;)V

    const/4 v2, -0x2

    invoke-virtual {p0, v2, v0, v1}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
