.class public Lcom/amazon/notebook/module/NotebookActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "NotebookActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;
    }
.end annotation


# static fields
.field public static final EXPORT_ACTIVITY_REQUEST:I = 0x1

.field public static final EXPORT_SELECTION_ACTIVITY_REQUEST:I

.field private static final TAG:Ljava/lang/String;

.field private static notebookPluginEventsListener:Lcom/amazon/notebook/module/INotebookPluginEventsListener;

.field private static themeProvider:Lcom/amazon/notebook/ThemeProvider;

.field private static tutorialProvider:Lcom/amazon/kcp/reader/notebook/INotebookTutorialProvider;


# instance fields
.field private annotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/Note;",
            ">;"
        }
    .end annotation
.end field

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private headerBar:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

.field private launchIntent:Landroid/content/Intent;

.field private noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

.field private notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

.field private notesListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

.field private resumedTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    const-class v0, Lcom/amazon/notebook/module/NotebookActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/notebook/module/NotebookActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 84
    sput-object v0, Lcom/amazon/notebook/module/NotebookActivity;->tutorialProvider:Lcom/amazon/kcp/reader/notebook/INotebookTutorialProvider;

    .line 86
    sput-object v0, Lcom/amazon/notebook/module/NotebookActivity;->notebookPluginEventsListener:Lcom/amazon/notebook/module/INotebookPluginEventsListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->annotations:Ljava/util/List;

    .line 99
    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/NotebookActivity;)Lcom/amazon/notebook/module/NotebookScreenLayout;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/NotebookActivity;)Lcom/amazon/notebook/module/BaseNotebookHeaderBar;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookActivity;->headerBar:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/NotebookActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 77
    sget-object v0, Lcom/amazon/notebook/module/NotebookActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/notebook/module/NotebookActivity;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookActivity;->onTocLoaded()V

    return-void
.end method

.method private displayAnnotations(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;)V
    .locals 8

    .line 580
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->setAnnotationListAdapter(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;Lcom/amazon/notebook/module/NotebookNoteTools;)V

    .line 581
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->getAnnotationsListView()Landroid/widget/ListView;

    move-result-object v3

    .line 582
    new-instance p1, Lcom/amazon/notebook/module/NotebookListEventHandler;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v4, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    move-object v0, p1

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/amazon/notebook/module/NotebookListEventHandler;-><init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/notebook/module/NotebookScreenLayout;Landroid/os/Bundle;Landroid/content/Context;Lcom/amazon/notebook/module/NotebookNoteTools;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesListEventHandler:Lcom/amazon/notebook/module/NotebookListEventHandler;

    .line 583
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {p2, p1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->setNotebookListEventHandler(Lcom/amazon/notebook/module/NotebookListEventHandler;)V

    .line 584
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->updateExportButtons()V

    return-void
.end method

.method private getCountMetricMap(J)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 523
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 524
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "count"

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getNotebookPluginEventsListener()Lcom/amazon/notebook/module/INotebookPluginEventsListener;
    .locals 1

    .line 138
    sget-object v0, Lcom/amazon/notebook/module/NotebookActivity;->notebookPluginEventsListener:Lcom/amazon/notebook/module/INotebookPluginEventsListener;

    return-object v0
.end method

.method private getUINameForFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/lang/String;
    .locals 2

    .line 529
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

    .line 533
    :cond_0
    sget p1, Lcom/amazon/notebook/module/R$string;->notebook_all_items:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 530
    :cond_1
    :goto_0
    sget p1, Lcom/amazon/notebook/module/R$string;->notebook_filtered_items:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private onAnnotationsLoaded()V
    .locals 2

    .line 537
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/notebook/module/NotebookActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookActivity$2;-><init>(Lcom/amazon/notebook/module/NotebookActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private onTocLoaded()V
    .locals 2

    .line 572
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookNoteTools;->getChapterList()Ljava/util/List;

    move-result-object v0

    .line 573
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->headerBar:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-virtual {v1, v0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->populateChapterMenu(Ljava/util/List;)V

    .line 576
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/notebook/module/NotebookActivity;->displayAnnotations(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;)V

    return-void
.end method

.method private saveLastNoteBookOpenTime()V
    .locals 0

    return-void
.end method

.method public static setNotebookPluginEventsListener(Lcom/amazon/notebook/module/INotebookPluginEventsListener;)V
    .locals 0

    .line 121
    sput-object p0, Lcom/amazon/notebook/module/NotebookActivity;->notebookPluginEventsListener:Lcom/amazon/notebook/module/INotebookPluginEventsListener;

    return-void
.end method

.method public static setNotebookTutorialProvider(Lcom/amazon/kcp/reader/notebook/INotebookTutorialProvider;)V
    .locals 0

    .line 112
    sput-object p0, Lcom/amazon/notebook/module/NotebookActivity;->tutorialProvider:Lcom/amazon/kcp/reader/notebook/INotebookTutorialProvider;

    return-void
.end method

.method public static setThemeProvider(Lcom/amazon/notebook/ThemeProvider;)V
    .locals 0

    .line 129
    sput-object p0, Lcom/amazon/notebook/module/NotebookActivity;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    return-void
.end method


# virtual methods
.method public animateAndFinish(II)V
    .locals 0

    .line 238
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    .line 240
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method

.method public getAnnotations(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/notebook/module/CompositeNotebookFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;",
            ">;"
        }
    .end annotation

    .line 502
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->getAnnotationsListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    .line 503
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    if-nez v0, :cond_0

    .line 505
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {v0, p1}, Lcom/amazon/notebook/module/NotebookNoteTools;->getFilteredNotes(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/util/List;

    move-result-object p1

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 511
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/Note;

    .line 512
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kindle/model/sync/annotation/Utils;->getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v2

    .line 513
    new-instance v3, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/amazon/notebook/module/NotebookActivity$AnnotationReference;-><init>(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object v0
.end method

.method public getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;
    .locals 1

    .line 519
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->headerBar:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    return-object v0
.end method

.method public getNotesLayout()Lcom/amazon/notebook/module/NotebookScreenLayout;
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    if-nez v1, :cond_0

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/notebook/module/NotebookHeaderBar;->enableExportButton()V

    :cond_0
    const/4 v4, -0x1

    const/4 v5, 0x0

    const-string v6, "CompositeFilter"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v1, :cond_5

    if-ne v2, v4, :cond_5

    .line 352
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/notebook/module/exporting/NotebookExportActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "exportClippingStatus"

    const-string v4, "OpenPositionOverride"

    const-string v9, "CitationStyleIndex"

    if-eqz v3, :cond_1

    .line 358
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-virtual {v5, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 360
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 361
    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Lcom/amazon/notebook/module/exporting/citations/CitationStyle;

    .line 362
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v10

    check-cast v10, Lcom/amazon/notebook/module/exporting/NotebookClippingLimitManager$ClippingStatusData$ClippingStatus;

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    move-object/from16 v17, v5

    move-object v5, v3

    move-object/from16 v3, v17

    goto :goto_0

    :cond_1
    move-object v3, v5

    move-object v10, v3

    :goto_0
    if-eqz v5, :cond_2

    .line 367
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_1

    .line 369
    :cond_2
    new-instance v5, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-direct {v5}, Lcom/amazon/notebook/module/CompositeNotebookFilter;-><init>()V

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :goto_1
    if-eqz v10, :cond_3

    .line 373
    invoke-virtual {v1, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_3
    if-eqz v3, :cond_4

    .line 377
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 378
    invoke-virtual {v2, v9, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 379
    invoke-virtual {v1, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 382
    :cond_4
    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 383
    invoke-virtual {v0, v1, v8}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_5
    if-ne v1, v8, :cond_d

    const/4 v1, 0x2

    if-ne v2, v8, :cond_7

    .line 386
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "originalAnnotationCount"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_6

    .line 389
    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_no_annotations_dialog_text:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 394
    :cond_6
    new-instance v3, Ljava/text/MessageFormat;

    sget v4, Lcom/amazon/notebook/module/R$string;->notebook_export_no_exportable_annotations_dialog_text:I

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    new-array v4, v1, [D

    .line 395
    fill-array-data v4, :array_0

    new-array v1, v1, [Ljava/lang/String;

    .line 396
    sget v5, Lcom/amazon/notebook/module/R$string;->notebook_export_no_exportable_annotations_one:I

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    sget v5, Lcom/amazon/notebook/module/R$string;->notebook_export_no_exportable_annotations_many:I

    .line 397
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v8

    .line 398
    new-instance v5, Ljava/text/ChoiceFormat;

    invoke-direct {v5, v4, v1}, Ljava/text/ChoiceFormat;-><init>([D[Ljava/lang/String;)V

    .line 399
    invoke-virtual {v3, v7, v5}, Ljava/text/MessageFormat;->setFormatByArgumentIndex(ILjava/text/Format;)V

    new-array v1, v8, [Ljava/lang/Object;

    int-to-long v4, v2

    .line 400
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v7

    .line 401
    invoke-virtual {v3, v1}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 403
    :goto_2
    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_export_no_annotations_dialog_title:I

    .line 404
    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {v2, v1, v0}, Lcom/amazon/kcp/redding/AlertActivity;->createBaseAlertIntent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_4

    :cond_7
    if-ne v2, v1, :cond_9

    .line 407
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/amazon/notebook/module/exporting/NotebookExportSelectionActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz v3, :cond_8

    .line 411
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    goto :goto_3

    .line 414
    :cond_8
    new-instance v2, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-direct {v2}, Lcom/amazon/notebook/module/CompositeNotebookFilter;-><init>()V

    .line 417
    :goto_3
    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v2, "ExportShowSizeWarning"

    .line 418
    invoke-virtual {v1, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 420
    invoke-virtual {v0, v1, v7}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_9
    if-ne v2, v4, :cond_d

    if-eqz v3, :cond_d

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 422
    invoke-static {}, Lcom/amazon/notebook/module/metrics/NotebookClickstreamMetricManager;->logNotebookExportFinished()V

    .line 425
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 426
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    :cond_a
    if-nez v5, :cond_b

    .line 429
    new-instance v5, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-direct {v5}, Lcom/amazon/notebook/module/CompositeNotebookFilter;-><init>()V

    .line 432
    :cond_b
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v4, "ExportResultURI"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 433
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "ExportResultFileSize"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    .line 434
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "ExportResultNumNotesExported"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    .line 435
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "ExportResultNumBookmarksExported"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v12

    .line 436
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "ExportResultNumHighlightsExported"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "ExportResultNumGHLsExported"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    .line 438
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "ExportPercentageClippingUsed"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v3

    .line 439
    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getClippingLimit()F

    move-result v4

    div-float/2addr v3, v4

    .line 440
    iget-object v4, v0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 442
    new-instance v6, Landroid/content/Intent;

    const-string v15, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 446
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "android.intent.extra.STREAM"

    .line 447
    invoke-virtual {v6, v2, v15}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v2, "message/rfc822"

    .line 449
    invoke-virtual {v6, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_export_email_subject:I

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v4, v15, v7

    invoke-virtual {v0, v2, v15}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v15, "android.intent.extra.SUBJECT"

    invoke-virtual {v6, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_export_email_body:I

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v5}, Lcom/amazon/notebook/module/NotebookActivity;->getUINameForFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v7

    aput-object v4, v1, v8

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.TEXT"

    .line 454
    invoke-virtual {v6, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    long-to-int v15, v9

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v3, v3, v1

    float-to-int v1, v3

    move/from16 v16, v1

    .line 456
    invoke-static/range {v11 .. v16}, Lcom/amazon/notebook/module/metrics/NotebookPMETMetricManager;->logNotebookExported(IIIIII)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 460
    invoke-virtual {v6, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 461
    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_email_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_4

    .line 464
    :cond_c
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_no_app_to_export_alert_title:I

    .line 465
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_no_app_to_export_alert_content:I

    .line 466
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_no_app_to_export_alert_link_title:I

    .line 467
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    sget v1, Lcom/amazon/notebook/module/R$string;->notebook_export_no_app_to_export_alert_link_url:I

    .line 468
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 464
    invoke-interface/range {v2 .. v7}, Lcom/amazon/kcp/application/IAndroidApplicationController;->showAlertWithDPLink(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    :goto_4
    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
    .end array-data
.end method

.method public onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 262
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_READ_FROM_SIDECAR:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 263
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 264
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1, v0}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity;->annotations:Ljava/util/List;

    .line 265
    new-instance p1, Lcom/amazon/notebook/module/NotebookNoteTools;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookActivity;->annotations:Ljava/util/List;

    sget-object v3, Lcom/amazon/notebook/module/NotebookActivity;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/amazon/notebook/module/NotebookNoteTools;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;Ljava/util/List;Lcom/amazon/notebook/ThemeProvider;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 266
    new-instance p1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    sget-object v1, Lcom/amazon/notebook/module/NotebookActivity;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-direct {p1, p0, v0, v1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;-><init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity;->headerBar:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    .line 267
    invoke-virtual {p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->initialize()V

    .line 268
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookActivity;->onAnnotationsLoaded()V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 320
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "Notebook"

    const-string v2, "BackPressed"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->BACK_BUTTON_PRESSED:Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/metrics/NotebookActionMetric$Header;->emit()Lkotlin/Unit;

    .line 322
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 144
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->launchIntent:Landroid/content/Intent;

    if-eqz p1, :cond_1

    const-string v0, "ScrollPosition"

    .line 148
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->launchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const-string v0, "ScrollOffset"

    .line 151
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->launchIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getBrightnessManager()Lcom/amazon/kindle/brightness/IBrightnessManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/brightness/IBrightnessManager;->applyScreenBrightness(Landroid/view/Window;)Z

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/application/ReddingApplication;

    if-eqz v0, :cond_5

    .line 157
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/ReddingApplication;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/ReddingApplication;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 158
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/redding/ReddingActivity;->setRequestedOrientation(I)V

    .line 160
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ReaderController;->bindToCurrentBook(Landroid/app/Activity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_2

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 164
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 167
    :cond_2
    invoke-static {}, Lcom/amazon/notebook/DarkModeUtil;->getInstance()Lcom/amazon/notebook/DarkModeUtil;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookActivity;->setThemeProvider(Lcom/amazon/notebook/ThemeProvider;)V

    .line 169
    const-class v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/ui/DarkModeHelper;

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    .line 171
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/DarkModeHelper;->isDarkModePhaseEnabled(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 172
    :cond_3
    sget-object v0, Lcom/amazon/notebook/module/NotebookActivity;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v0}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v0, Lcom/amazon/notebook/module/R$style;->Theme_NotebookStyle:I

    goto :goto_0

    :cond_4
    sget v0, Lcom/amazon/notebook/module/R$style;->Theme_NotebookStyle_Light:I

    .line 173
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    goto :goto_1

    .line 179
    :cond_5
    sget v0, Lcom/amazon/notebook/module/R$style;->Theme_NotebookStyle_Light:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 183
    :cond_6
    :goto_1
    sget v0, Lcom/amazon/notebook/module/R$layout;->notebook_module_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 184
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/NotebookScreenLayout;

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    .line 185
    sget v1, Lcom/amazon/notebook/module/R$id;->selected_filters_close_btn:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 186
    sget-object v1, Lcom/amazon/notebook/module/NotebookActivity;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v1}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 187
    sget v1, Lcom/amazon/notebook/module/R$drawable;->ic_close_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 189
    :cond_7
    sget v1, Lcom/amazon/notebook/module/R$drawable;->ic_close_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 191
    :goto_2
    new-instance v1, Lcom/amazon/notebook/module/NotebookActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookActivity$1;-><init>(Lcom/amazon/notebook/module/NotebookActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_a

    .line 200
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 201
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 202
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_MENU_POPULATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    :cond_8
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    .line 206
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasReadAnnotations()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v1, v2}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->annotations:Ljava/util/List;

    goto :goto_3

    .line 209
    :cond_9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->annotations:Ljava/util/List;

    .line 211
    :goto_3
    new-instance v1, Lcom/amazon/notebook/module/NotebookNoteTools;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/notebook/module/NotebookActivity;->annotations:Ljava/util/List;

    sget-object v5, Lcom/amazon/notebook/module/NotebookActivity;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/notebook/module/NotebookNoteTools;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/content/Context;Ljava/util/List;Lcom/amazon/notebook/ThemeProvider;)V

    iput-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    .line 212
    new-instance v1, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    sget-object v3, Lcom/amazon/notebook/module/NotebookActivity;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-direct {v1, p0, v2, v3}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;-><init>(Lcom/amazon/notebook/module/NotebookActivity;Lcom/amazon/notebook/module/NotebookNoteTools;Lcom/amazon/notebook/ThemeProvider;)V

    iput-object v1, p0, Lcom/amazon/notebook/module/NotebookActivity;->headerBar:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    .line 213
    invoke-virtual {v1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->initialize()V

    .line 215
    invoke-interface {v0}, Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;->hasReadAnnotations()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 218
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookActivity;->onAnnotationsLoaded()V

    .line 223
    :cond_a
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    sget-object v1, Lcom/amazon/notebook/module/NotebookActivity;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->setThemeProvider(Lcom/amazon/notebook/ThemeProvider;)V

    .line 224
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {v0, p0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->setActivity(Lcom/amazon/notebook/module/NotebookActivity;)V

    .line 226
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 227
    sget-object v0, Lcom/amazon/notebook/module/NotebookActivity;->tutorialProvider:Lcom/amazon/kcp/reader/notebook/INotebookTutorialProvider;

    if-eqz v0, :cond_b

    .line 228
    invoke-interface {v0}, Lcom/amazon/kcp/reader/notebook/INotebookTutorialProvider;->reportNotebookOpened()V

    .line 231
    :cond_b
    sget-object v0, Lcom/amazon/notebook/module/NotebookActivity;->notebookPluginEventsListener:Lcom/amazon/notebook/module/INotebookPluginEventsListener;

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    .line 232
    invoke-interface {v0}, Lcom/amazon/notebook/module/INotebookPluginEventsListener;->onNotebookOpened()V

    .line 234
    :cond_c
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookActivity;->saveLastNoteBookOpenTime()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->headerBar:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-virtual {v0, p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->populateActionMenu(Landroid/view/Menu;)Landroid/view/Menu;

    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 298
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/NotebookScreenLayout;

    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->close()V

    .line 303
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 305
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 307
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleApplicationController;->reader()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, p0, v1}, Lcom/amazon/kcp/reader/ReaderController;->unbindFromCurrentBook(Landroid/app/Activity;Z)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->headerBar:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-virtual {v0, p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->onActionClick(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 251
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 293
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->resumedTime:J

    .line 284
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/NotebookScreenLayout;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->hasNotes()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->updateExportButtons()V

    .line 288
    :cond_0
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 312
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_screen:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/NotebookScreenLayout;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 314
    invoke-virtual {v0, p1, v1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->saveScrollPosition(Landroid/os/Bundle;I)V

    :cond_0
    return-void
.end method

.method public onSearchRequested()Z
    .locals 3

    .line 327
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 328
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/notebook/module/R$string;->notebook_search_unavailable:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 329
    sget v1, Lcom/amazon/notebook/module/R$string;->ok:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 330
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 331
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 332
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return v1
.end method

.method public onTocLoadedEvent(Lcom/amazon/android/docviewer/BaseKindleDocViewer$TocReadyEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 274
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer$ReadyEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eq p1, v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookActivity;->onTocLoaded()V

    return-void
.end method

.method public refreshAnnotations(Landroid/os/Bundle;)V
    .locals 3

    .line 563
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->notesLayout:Lcom/amazon/notebook/module/NotebookScreenLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->saveScrollPosition(Landroid/os/Bundle;I)V

    .line 564
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->noteTools:Lcom/amazon/notebook/module/NotebookNoteTools;

    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v1, v2}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->getAllAnnotations(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/notebook/module/NotebookNoteTools;->resetAnnotations(Ljava/util/List;)V

    .line 565
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0, v0, p1}, Lcom/amazon/notebook/module/NotebookActivity;->displayAnnotations(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;)V

    .line 566
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public requiresRegistration()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
