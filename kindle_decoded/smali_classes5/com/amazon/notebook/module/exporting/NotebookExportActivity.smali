.class public Lcom/amazon/notebook/module/exporting/NotebookExportActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "NotebookExportActivity.java"


# static fields
.field public static final RESULT_EMPTY:I = 0x1

.field public static final RESULT_ORIGINAL_ANNOTATION_COUNT:Ljava/lang/String; = "originalAnnotationCount"

.field public static final RESULT_OVERSIZE:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private exporter:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

.field private progressBar:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/exporting/NotebookExportActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->progressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/exporting/NotebookExportActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method private getUINameForFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/lang/String;
    .locals 2

    .line 162
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

    .line 166
    :cond_0
    sget p1, Lcom/amazon/notebook/module/R$string;->notebook_notebook:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 163
    :cond_1
    :goto_0
    sget p1, Lcom/amazon/notebook/module/R$string;->notebook_filtered_items:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private registerActionButtons(Landroidx/appcompat/app/AlertDialog$Builder;)V
    .locals 2

    .line 148
    sget v0, Lcom/amazon/notebook/module/R$string;->cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$2;-><init>(Lcom/amazon/notebook/module/exporting/NotebookExportActivity;)V

    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 177
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24

    move-object/from16 v0, p0

    .line 47
    invoke-super/range {p0 .. p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    .line 50
    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getSharedSettingsController()Lcom/amazon/kcp/application/SettingsController;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/SettingsController;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 52
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v3, "layout_inflater"

    .line 53
    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 54
    sget v4, Lcom/amazon/notebook/module/R$layout;->notebook_module_export:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 55
    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 56
    sget v4, Lcom/amazon/notebook/module/R$string;->notebook_export_preparing:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 58
    sget v4, Lcom/amazon/notebook/module/R$id;->notebook_module_export_download_progress:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->progressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    .line 59
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v1, :cond_0

    .line 64
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 69
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "CompositeFilter"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    .line 70
    invoke-direct {v0, v12}, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->getUINameForFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/lang/String;

    move-result-object v13

    .line 72
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "OpenPositionOverride"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "CitationStyleIndex"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

    .line 75
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v3, "exportClippingStatus"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    .line 77
    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;

    iget-object v3, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 78
    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getJpegImageQuality()I

    move-result v5

    .line 79
    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getGraphicalHighlightMaxWidth()I

    move-result v6

    invoke-direct {v1, v3, v5, v6}, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;II)V

    .line 80
    new-instance v3, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;

    iget-object v5, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {v3, v5}, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 81
    new-instance v5, Lcom/amazon/notebook/module/NotebookNoteTools;

    iget-object v6, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v8, v9}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object v8

    invoke-static {}, Lcom/amazon/notebook/DarkModeUtil;->getInstance()Lcom/amazon/notebook/DarkModeUtil;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/amazon/notebook/module/NotebookNoteTools;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;Ljava/util/List;Lcom/amazon/notebook/ThemeProvider;)V

    .line 84
    :try_start_0
    new-instance v6, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-direct {v6, v0, v1, v3, v5}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;-><init>(Landroid/app/Activity;Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager;Lcom/amazon/notebook/module/NotebookNoteTools;)V

    iput-object v6, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->exporter:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    new-instance v1, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;

    move-object/from16 v23, v1

    invoke-direct {v1, v0}, Lcom/amazon/notebook/module/exporting/NotebookExportActivity$1;-><init>(Lcom/amazon/notebook/module/exporting/NotebookExportActivity;)V

    .line 129
    invoke-direct {v0, v2}, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->registerActionButtons(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 131
    iget-object v5, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->exporter:Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;

    invoke-static {}, Lcom/amazon/notebook/module/NotebookPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 132
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v7

    iget-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 133
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v8

    iget-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 134
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v9

    iget-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 135
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDate()Ljava/lang/String;

    move-result-object v10

    iget-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 136
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getPublisher()Ljava/lang/String;

    move-result-object v11

    .line 138
    invoke-static {}, Lcom/amazon/notebook/module/exporting/NotebookExportSettings;->getMaxMessageSize()J

    move-result-wide v16

    iget-object v1, v0, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 139
    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getClippingLimit()F

    move-result v18

    sget v1, Lcom/amazon/notebook/module/R$string;->notes_note:I

    .line 140
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v20

    sget v1, Lcom/amazon/notebook/module/R$string;->notes_bookmark:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget v1, Lcom/amazon/notebook/module/R$string;->notes_highlight:I

    .line 141
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 131
    invoke-virtual/range {v5 .. v23}, Lcom/amazon/notebook/module/exporting/NotebookHTMLExporter;->getNotebookHTMLString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/notebook/module/CompositeNotebookFilter;Ljava/lang/String;ZLcom/amazon/notebook/module/exporting/citations/CitationStyle;JFLcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/notebook/module/exporting/INotebookHTMLExporterCallback;)Ljava/util/concurrent/Future;

    .line 143
    invoke-virtual {v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 144
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 86
    :catch_0
    sget-object v1, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read raw resources for NotebookHTMLExporter"

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 88
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 171
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

    .line 172
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
