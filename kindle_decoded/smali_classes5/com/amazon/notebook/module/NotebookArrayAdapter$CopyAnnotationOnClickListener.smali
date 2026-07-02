.class Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CopyAnnotationOnClickListener"
.end annotation


# static fields
.field private static final CLIP_DATA_ANNOTATIONS_LABEL:Ljava/lang/String; = "Annotations"

.field private static final COPY_TEXT_DENIED_DIALOG_TAG:Ljava/lang/String; = "CopyTextCustomSelectionButton_CopyTextDeniedDialog"


# instance fields
.field private final context:Landroid/content/Context;

.field private final document:Lcom/amazon/android/docviewer/KindleDoc;

.field private final note:Lcom/amazon/kcp/reader/Note;

.field private final popupWindow:Landroid/widget/PopupWindow;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Landroid/widget/PopupWindow;Lcom/amazon/kcp/reader/Note;)V
    .locals 0

    .line 1026
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1027
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->context:Landroid/content/Context;

    .line 1028
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->document:Lcom/amazon/android/docviewer/KindleDoc;

    .line 1029
    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->popupWindow:Landroid/widget/PopupWindow;

    .line 1030
    iput-object p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->note:Lcom/amazon/kcp/reader/Note;

    return-void
.end method

.method private recordCopyActionInFastMetrics()V
    .locals 2

    .line 1091
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1096
    :cond_0
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->POPULAR_HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->emit()Lkotlin/Unit;

    goto :goto_0

    .line 1093
    :cond_1
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->HIGHLIGHT:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->emit()Lkotlin/Unit;

    goto :goto_0

    .line 1102
    :cond_2
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->NOTE:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->emit()Lkotlin/Unit;

    goto :goto_0

    .line 1099
    :cond_3
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->BOOKMARK:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->emit()Lkotlin/Unit;

    :goto_0
    return-void
.end method

.method private recordCopyActionMetrics(FLjava/lang/String;)V
    .locals 3

    .line 1079
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 1083
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-static {p1, p2}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$800(FI)Ljava/util/Map;

    move-result-object p1

    const-string p2, "AnnotationActionCopy"

    const-string v2, "SelectionButtons"

    .line 1079
    invoke-virtual {v0, v2, p2, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 1084
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "NotebookAnnotationAction"

    .line 1085
    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->recordCopyActionInFastMetrics()V

    return-void
.end method

.method private recordCopyDeniedMetrics(FII)V
    .locals 2

    .line 1068
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    sub-int/2addr p3, p2

    add-int/lit8 p3, p3, 0x1

    .line 1072
    invoke-static {p1, p3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->access$800(FI)Ljava/util/Map;

    move-result-object p1

    const-string p2, "CopyTextDenied"

    const-string p3, "SelectionButtons"

    .line 1068
    invoke-virtual {v0, p3, p2, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 1073
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p3, "NotebookAnnotationAction"

    .line 1074
    invoke-interface {p1, p3, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    sget-object p1, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->DENIED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Copy;->emit()Lkotlin/Unit;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1035
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->document:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getClippingLimit()F

    move-result p1

    .line 1037
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v0

    .line 1038
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    .line 1040
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getClippingService()Lcom/amazon/kindle/clipping/IClippingService;

    move-result-object v2

    .line 1041
    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->document:Lcom/amazon/android/docviewer/KindleDoc;

    invoke-interface {v2, v3, v0, v1}, Lcom/amazon/kindle/clipping/IClippingService;->updateAndCheckClippingBalance(Lcom/amazon/android/docviewer/KindleDoc;II)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1044
    new-instance v2, Lcom/amazon/kcp/reader/ui/buttons/CopyTextCustomSelectionButton$CopyTextDeniedDialogFragment;

    invoke-direct {v2}, Lcom/amazon/kcp/reader/ui/buttons/CopyTextCustomSelectionButton$CopyTextDeniedDialogFragment;-><init>()V

    .line 1045
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "CopyTextCustomSelectionButton_CopyTextDeniedDialog"

    invoke-virtual {v2, v3, v4}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1047
    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->recordCopyDeniedMetrics(FII)V

    return-void

    .line 1052
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1053
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getUserText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1054
    :cond_1
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->note:Lcom/amazon/kcp/reader/Note;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    :goto_0
    const-string v1, "Annotations"

    .line 1057
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 1059
    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->context:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ClipboardManager;

    .line 1060
    invoke-virtual {v2, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 1062
    invoke-direct {p0, p1, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->recordCopyActionMetrics(FLjava/lang/String;)V

    .line 1064
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$CopyAnnotationOnClickListener;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
