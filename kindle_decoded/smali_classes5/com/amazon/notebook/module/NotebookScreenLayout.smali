.class public Lcom/amazon/notebook/module/NotebookScreenLayout;
.super Landroid/widget/FrameLayout;
.source "NotebookScreenLayout.java"


# instance fields
.field private activity:Lcom/amazon/notebook/module/NotebookActivity;

.field private headerAndList:Landroid/widget/LinearLayout;

.field private listView:Landroid/widget/ListView;

.field private listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

.field private noAnnotationsView:Landroid/widget/TextView;

.field private spinnerView:Landroid/view/View;

.field private themeProvider:Lcom/amazon/notebook/ThemeProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/notebook/module/NotebookScreenLayout;)Lcom/amazon/notebook/module/NotebookArrayAdapter;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/notebook/module/NotebookScreenLayout;)Landroid/widget/ListView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/notebook/module/NotebookScreenLayout;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->dismissSpinner()V

    return-void
.end method

.method private dismissSpinner()V
    .locals 10

    .line 221
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->spinnerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 222
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "ACTIVITY_START_TIME"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 224
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v4

    sget-object v7, Lcom/amazon/kindle/services/metrics/MetricType;->INFO:Lcom/amazon/kindle/services/metrics/MetricType;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long v8, v5, v2

    const-string v5, "NotebookTimer"

    const-string v6, "Opened_TIMER"

    invoke-virtual/range {v4 .. v9}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportTimerMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/services/metrics/MetricType;J)V

    .line 226
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/notebook/module/NotebookScreenLayout$2;

    invoke-direct {v1, p0}, Lcom/amazon/notebook/module/NotebookScreenLayout$2;-><init>(Lcom/amazon/notebook/module/NotebookScreenLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getScreenBackgroundColor(Z)I
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$color;->notes_screen_background_dark:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1

    .line 67
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$color;->notes_screen_background_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    return p1
.end method

.method private releaseAdapter()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->release()V

    :cond_0
    return-void
.end method


# virtual methods
.method public canBeScrolled()Z
    .locals 7

    .line 140
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    .line 142
    iget-object v2, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move-object v5, v3

    goto :goto_0

    .line 143
    :cond_0
    iget-object v5, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {v5, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v3, v6}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :goto_1
    const/4 v6, 0x1

    if-eqz v2, :cond_3

    if-nez v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v1, v0, :cond_2

    .line 146
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v0

    if-ltz v0, :cond_2

    .line 147
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    return v4
.end method

.method public close()V
    .locals 0

    .line 155
    invoke-direct {p0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->releaseAdapter()V

    return-void
.end method

.method public getAnnotationsListView()Landroid/widget/ListView;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getListViewAdapter()Lcom/amazon/notebook/module/NotebookArrayAdapter;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    return-object v0
.end method

.method public hasNotes()Z
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->hasNotes()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 160
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 162
    sget v0, Lcom/amazon/notebook/module/R$id;->list_module_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    .line 163
    sget v0, Lcom/amazon/notebook/module/R$id;->zero_notes_module_notification:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->noAnnotationsView:Landroid/widget/TextView;

    .line 164
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_spinner:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->spinnerView:Landroid/view/View;

    .line 165
    sget v0, Lcom/amazon/notebook/module/R$id;->notebook_module_screen_header_and_list:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->headerAndList:Landroid/widget/LinearLayout;

    return-void
.end method

.method public saveScrollPosition(Landroid/os/Bundle;I)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 201
    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    const-string v1, "ScrollOffset"

    const-string v2, "ScrollPosition"

    const/4 v3, 0x0

    if-ltz p2, :cond_0

    if-ne v0, p2, :cond_0

    .line 203
    invoke-virtual {p1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 206
    :cond_0
    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 207
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    .line 209
    :goto_0
    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setActivity(Lcom/amazon/notebook/module/NotebookActivity;)V
    .locals 2

    .line 43
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    .line 45
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "CompositeFilter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    .line 47
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/notebook/module/NotebookHeaderBar;->selectItemByCompositeFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-nez p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->headerAndList:Landroid/widget/LinearLayout;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->headerAndList:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    invoke-interface {v0}, Lcom/amazon/notebook/ThemeProvider;->isDarkThemed()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->getScreenBackgroundColor(Z)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method public setAnnotationListAdapter(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;Lcom/amazon/notebook/module/NotebookNoteTools;)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 82
    :cond_0
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    const-string v1, "OpenPositionOverride"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 84
    :goto_0
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-static {v1, p1, p2, p3}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->createAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;Lcom/amazon/notebook/module/NotebookNoteTools;)Lcom/amazon/notebook/module/NotebookArrayAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    .line 85
    invoke-virtual {p1, v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->indexOfNearestNoteBeforePosition(I)I

    move-result p1

    const/4 p3, -0x1

    const-string v0, "ScrollPosition"

    .line 86
    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x0

    const-string v1, "ScrollOffset"

    .line 87
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    new-instance v2, Lcom/amazon/notebook/module/NotebookScreenLayout$1;

    invoke-direct {v2, p0, p3, v0, p1}, Lcom/amazon/notebook/module/NotebookScreenLayout$1;-><init>(Lcom/amazon/notebook/module/NotebookScreenLayout;III)V

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    const-string p1, "CompositeFilter"

    .line 109
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    if-nez p1, :cond_1

    .line 111
    new-instance p1, Lcom/amazon/notebook/module/CompositeNotebookFilter;

    invoke-direct {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;-><init>()V

    .line 113
    :cond_1
    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {p2}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/notebook/module/NotebookHeaderBar;->selectItemByCompositeFilter(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V

    .line 114
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->updateContent(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V

    .line 115
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->startPopulating()V

    return-void

    .line 76
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "setActivity must be called on this object before calling setAnnotationListAdapter."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setNotebookListEventHandler(Lcom/amazon/notebook/module/NotebookListEventHandler;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {v0, p1}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->setNotebookListEventHandler(Lcom/amazon/notebook/module/NotebookListEventHandler;)V

    :cond_0
    return-void
.end method

.method public setThemeProvider(Lcom/amazon/notebook/ThemeProvider;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->themeProvider:Lcom/amazon/notebook/ThemeProvider;

    return-void
.end method

.method public updateContent(Lcom/amazon/notebook/module/CompositeNotebookFilter;)V
    .locals 4

    .line 173
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->hasNotes()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_1

    .line 174
    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedFilters()Ljava/util/Set;

    move-result-object v0

    sget-object v3, Lcom/amazon/notebook/module/NotebookFilter;->ALL:Lcom/amazon/notebook/module/NotebookFilter;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/notebook/module/CompositeNotebookFilter;->getSelectedChapters()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 175
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->noAnnotationsView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/notebook/module/R$string;->zero_annotations_text:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->noAnnotationsView:Landroid/widget/TextView;

    sget v0, Lcom/amazon/notebook/module/R$string;->zero_filtered_annotations_text:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 179
    :goto_0
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->noAnnotationsView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->spinnerView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 182
    :cond_1
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->noAnnotationsView:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->spinnerView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_1
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/notebook/module/NotebookHeaderBar;->disableExportButton()V

    .line 186
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {p1}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/notebook/module/NotebookHeaderBar;->disableFlashcardsButton()V

    return-void
.end method

.method public updateExportButtons()V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->hasNoteForExportToEmail()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/notebook/module/NotebookHeaderBar;->enableExportButton()V

    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/notebook/module/NotebookHeaderBar;->disableExportButton()V

    .line 125
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->listViewAdapter:Lcom/amazon/notebook/module/NotebookArrayAdapter;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookArrayAdapter;->hasNoteForExportToFlashcards()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/notebook/module/NotebookHeaderBar;->enableFlashcardsButton()V

    goto :goto_1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout;->activity:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookActivity;->getHeaderBar()Lcom/amazon/notebook/module/NotebookHeaderBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/notebook/module/NotebookHeaderBar;->disableFlashcardsButton()V

    :cond_2
    :goto_1
    return-void
.end method
