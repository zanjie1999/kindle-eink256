.class public Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "NotebookExportSelectionActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bookId:Ljava/lang/String;

.field private citationStyleRadioGroup:Landroid/widget/RadioGroup;

.field private clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

.field private clippingStatusCache:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private includeImagesCheckBox:Landroid/widget/CheckBox;

.field private maxClippingPercentage:F

.field private messageTextView:Landroid/widget/TextView;

.field private noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

.field private notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

.field private userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/notebook/module/exporting/citations/CitationStyle;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->getSelectedCitationStyle()Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->checkClippingLimits()Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->includeImages()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)Lcom/amazon/notebook/module/CompositeNotebookFilter;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    return-object p0
.end method

.method private checkClippingLimits()Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;
    .locals 10

    .line 232
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingStatusCache:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    if-eqz v0, :cond_0

    return-object v0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;

    move-result-object v0

    .line 237
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 239
    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->userId:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->bookId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getPercentPreviouslyExported(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)F

    move-result v2

    .line 240
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->userId:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->bookId:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v0}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;->getPercentExported(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)F

    move-result v0

    .line 241
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getClippingLimit()F

    move-result v3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    .line 255
    new-instance v3, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    sget-object v4, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->MAXIMUM_FAIL:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;-><init>(Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;FFI)V

    iput-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingStatusCache:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    goto :goto_0

    :cond_1
    cmpl-float v4, v0, v3

    if-lez v4, :cond_2

    .line 257
    new-instance v3, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    sget-object v4, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->EXPORT_EXCEEDS:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;-><init>(Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;FFI)V

    iput-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingStatusCache:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    goto :goto_0

    :cond_2
    float-to-double v4, v0

    float-to-double v6, v3

    const-wide/high16 v8, 0x3fd0000000000000L    # 0.25

    mul-double v6, v6, v8

    cmpl-double v3, v4, v6

    if-lez v3, :cond_3

    .line 259
    new-instance v3, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    sget-object v4, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->EXPORT_WARN:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;-><init>(Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;FFI)V

    iput-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingStatusCache:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    goto :goto_0

    .line 261
    :cond_3
    new-instance v3, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    sget-object v4, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;->OK:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-direct {v3, v4, v0, v2, v1}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;-><init>(Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;FFI)V

    iput-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingStatusCache:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingStatusCache:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    return-object v0
.end method

.method private getSelectedCitationStyle()Lcom/amazon/notebook/module/exporting/citations/CitationStyle;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->citationStyleRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    .line 276
    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->citationStyleRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

    return-object v0
.end method

.method private getUINameForFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/lang/String;
    .locals 2

    .line 268
    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_0

    goto :goto_0

    .line 271
    :cond_0
    sget p1, Lcom/amazon/notebook/module/R$string;->notebook_all_items:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1
    :goto_0
    sget p1, Lcom/amazon/notebook/module/R$string;->notebook_filtered_items:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private includeImages()Z
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->includeImagesCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setClippingMessage(Landroid/widget/TextView;)V
    .locals 7

    .line 202
    invoke-direct {p0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->checkClippingLimits()Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$3;->$SwitchMap$com$amazon$notebook$module$exporting$NotebookClippingLimitManager$ClippingStatusData$ClippingStatus:[I

    iget-object v2, v0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->status:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x42c80000    # 100.0f

    if-eq v1, v3, :cond_2

    const/4 v5, 0x2

    if-eq v1, v5, :cond_1

    const/4 v6, 0x3

    if-eq v1, v6, :cond_0

    const-string v0, ""

    goto :goto_0

    .line 215
    :cond_0
    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_nearing_clipping_warning:I

    new-array v5, v5, [Ljava/lang/Object;

    iget v0, v0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->currentlyExported:F

    mul-float v0, v0, v4

    float-to-int v0, v0

    .line 216
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    iget v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->maxClippingPercentage:F

    mul-float v0, v0, v4

    float-to-int v0, v0

    .line 217
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    .line 215
    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 210
    :cond_1
    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_exceeds_clipping_warning:I

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->maxClippingPercentage:F

    mul-float v6, v6, v4

    float-to-int v6, v6

    .line 211
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    iget v0, v0, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;->currentlyExported:F

    iget v6, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->maxClippingPercentage:F

    sub-float/2addr v0, v6

    mul-float v0, v0, v4

    float-to-int v0, v0

    .line 212
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    .line 210
    invoke-virtual {p0, v1, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 206
    :cond_2
    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_export_no_free_clipping_warning:I

    new-array v1, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->maxClippingPercentage:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 207
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 206
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 222
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 223
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    invoke-static {}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logClippingLimitWarningShown()V

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    .line 227
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 64
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    .line 68
    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 76
    :cond_0
    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->userId:Ljava/lang/String;

    .line 77
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->bookId:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getClippingLimit()F

    move-result p1

    iput p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->maxClippingPercentage:F

    .line 80
    new-instance p1, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p1, v2}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingLimitManager:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1, v2}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object p1

    .line 83
    new-instance v2, Lcom/amazon/notebook/module/NotebookNoteTools;

    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/amazon/notebook/DarkModeUtil;->getInstance()Lcom/amazon/notebook/DarkModeUtil;

    move-result-object v5

    invoke-direct {v2, v3, v4, p1, v5}, Lcom/amazon/notebook/module/NotebookNoteTools;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;Ljava/util/List;Lcom/amazon/notebook/ThemeProvider;)V

    iput-object v2, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v2, "CompositeFilter"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->setNotebookFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V

    .line 87
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "layout_inflater"

    .line 88
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 89
    sget v3, Lcom/amazon/notebook/module/R$layout;->notebook_module_export_selection:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 90
    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 91
    sget v3, Lcom/amazon/notebook/module/R$string;->notebook_export_selection_title:I

    new-array v4, v0, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-direct {p0, v5}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->getUINameForFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 93
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ExportShowSizeWarning"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 94
    sget v4, Lcom/amazon/notebook/module/R$id;->module_message_text:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->messageTextView:Landroid/widget/TextView;

    .line 95
    sget v4, Lcom/amazon/notebook/module/R$id;->module_include_images_checkbox:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    iput-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->includeImagesCheckBox:Landroid/widget/CheckBox;

    .line 96
    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 98
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isTextbook()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 99
    :goto_0
    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->includeImagesCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 101
    sget v0, Lcom/amazon/notebook/module/R$id;->module_citation_style_radiogroup:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->citationStyleRadioGroup:Landroid/widget/RadioGroup;

    .line 102
    sget v2, Lcom/amazon/notebook/module/R$id;->module_citation_style_apa_button:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 103
    iget-object v2, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->citationStyleRadioGroup:Landroid/widget/RadioGroup;

    sget v4, Lcom/amazon/notebook/module/R$id;->module_citation_style_chicago_button:I

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 104
    iget-object v4, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->citationStyleRadioGroup:Landroid/widget/RadioGroup;

    sget v5, Lcom/amazon/notebook/module/R$id;->module_citation_style_mla_button:I

    invoke-virtual {v4, v5}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 105
    iget-object v5, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->citationStyleRadioGroup:Landroid/widget/RadioGroup;

    sget v6, Lcom/amazon/notebook/module/R$id;->module_citation_style_none_button:I

    invoke-virtual {v5, v6}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 107
    new-instance v6, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;

    invoke-direct {v6}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleAPA;-><init>()V

    invoke-virtual {v0, v6}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 108
    new-instance v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleChicagoStyle;

    invoke-direct {v0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleChicagoStyle;-><init>()V

    invoke-virtual {v2, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 109
    new-instance v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA;

    invoke-direct {v0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleMLA;-><init>()V

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    .line 110
    new-instance v0, Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone;

    invoke-direct {v0}, Lcom/amazon/notebook/module/exporting/citations/CitationStyleNone;-><init>()V

    invoke-virtual {v5, v0}, Landroid/widget/RadioButton;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_2

    .line 113
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->messageTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->messageTextView:Landroid/widget/TextView;

    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_export_oversize_dialog_text:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_export_oversize_dialog_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_1

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->messageTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->setClippingMessage(Landroid/widget/TextView;)V

    .line 120
    :goto_1
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->registerButtonActions(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 122
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 123
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 135
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    .line 136
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method registerButtonActions(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    .line 146
    sget v0, Lcom/amazon/notebook/module/R$string;->notebook_export_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$1;-><init>(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 175
    sget v0, Lcom/amazon/notebook/module/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity$2;-><init>(Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method

.method public setNotebookFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->notebookFilter:Lcom/amazon/notebook/module/CompositeNotebookFilter;

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;->clippingStatusCache:Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData;

    return-void
.end method
