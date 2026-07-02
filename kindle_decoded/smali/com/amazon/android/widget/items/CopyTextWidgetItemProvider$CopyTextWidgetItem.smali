.class Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;
.super Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
.source "CopyTextWidgetItemProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CopyTextWidgetItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IContentSelection;",
        ">;"
    }
.end annotation


# static fields
.field private static final COPY_TEXT_DENIED_DIALOG_TAG:Ljava/lang/String; = "CopyTextCustomSelectionButton_CopyTextDeniedDialog"


# instance fields
.field private context:Landroid/content/Context;

.field private model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field private final priority:I


# direct methods
.method private constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Landroid/content/Context;I)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 73
    iput-object p2, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->context:Landroid/content/Context;

    .line 74
    iput p3, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->priority:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Landroid/content/Context;ILcom/amazon/android/widget/items/CopyTextWidgetItemProvider$1;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;-><init>(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;Landroid/content/Context;I)V

    return-void
.end method

.method private static getMetricData(FI)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 154
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 155
    invoke-static {p0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object p0

    const-string v1, "ClippingLimit"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "TextSize"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getButtonIdentifier()Ljava/lang/String;
    .locals 1

    const-string v0, "Copy"

    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I
    .locals 0

    .line 91
    iget p1, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->priority:I

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 54
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->getPriority(Lcom/amazon/kindle/krx/content/IContentSelection;)I

    move-result p1

    return p1
.end method

.method public getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;
    .locals 0

    .line 80
    sget p2, Lcom/amazon/kindle/krl/R$string;->annotation_copy_text:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getText(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 54
    check-cast p2, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->getText(Landroid/content/Context;Lcom/amazon/kindle/krx/content/IContentSelection;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-static {p1}, Lcom/amazon/android/widget/items/AbstractReaderActionWidgetSelectionItem;->isAnyTextSelected(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isVisible(Ljava/lang/Object;)Z
    .locals 0

    .line 54
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->isVisible(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method

.method public onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 7

    .line 97
    iget-object p1, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 107
    :cond_1
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getFirstSelectedPositionId()I

    move-result v0

    .line 109
    iget-object v1, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getLastSelectedPositionId()I

    move-result v1

    .line 110
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getClippingLimit()F

    move-result v3

    .line 111
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getClippingService()Lcom/amazon/kindle/clipping/IClippingService;

    move-result-object v4

    .line 112
    invoke-interface {v4, p1, v0, v1}, Lcom/amazon/kindle/clipping/IClippingService;->updateAndCheckClippingBalance(Lcom/amazon/android/docviewer/KindleDoc;II)Z

    move-result p1

    const-string v4, "SelectionButtons"

    if-nez p1, :cond_2

    .line 114
    new-instance p1, Lcom/amazon/kcp/reader/ui/buttons/CopyTextCustomSelectionButton$CopyTextDeniedDialogFragment;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/ui/buttons/CopyTextCustomSelectionButton$CopyTextDeniedDialogFragment;-><init>()V

    .line 115
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {v5}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const-string v6, "CopyTextCustomSelectionButton_CopyTextDeniedDialog"

    invoke-virtual {p1, v5, v6}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 119
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v5, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    sub-int/2addr v1, v0

    add-int/2addr v1, v2

    .line 120
    invoke-static {v3, v1}, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->getMetricData(FI)Ljava/util/Map;

    move-result-object v0

    const-string v1, "CopyTextDenied"

    .line 119
    invoke-virtual {p1, v4, v1, v5, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    return v2

    .line 125
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectedText()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    iget-object v0, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    const/4 v1, 0x0

    .line 129
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 132
    iget-object v0, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->copy_text_succeeded_message:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-static {v3, p1}, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->getMetricData(FI)Ljava/util/Map;

    move-result-object p1

    const-string v3, "CopyText"

    .line 133
    invoke-virtual {v0, v4, v3, v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;Ljava/util/Map;)V

    .line 136
    :cond_3
    iget-object p1, p0, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->model:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->selectNone()V

    .line 140
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 142
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "Book"

    const-string v1, "CopyToClipBoard"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2
.end method

.method public bridge synthetic onClick(Ljava/lang/Object;)Z
    .locals 0

    .line 54
    check-cast p1, Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/items/CopyTextWidgetItemProvider$CopyTextWidgetItem;->onClick(Lcom/amazon/kindle/krx/content/IContentSelection;)Z

    move-result p1

    return p1
.end method
