.class public Lcom/amazon/kcp/reader/PopularHighlightsActivity;
.super Lcom/amazon/kcp/reader/NotesActivity;
.source "PopularHighlightsActivity.java"


# instance fields
.field private final defaultPadding:Landroid/graphics/Rect;

.field private listView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/amazon/kcp/reader/NotesActivity;-><init>()V

    .line 22
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->defaultPadding:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 47
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 48
    iget-object p1, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->listView:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->defaultPadding:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/ViewUtils;->setHorizontalSafePadding(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 28
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/NotesActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    new-instance v5, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;

    invoke-direct {v5}, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;-><init>()V

    .line 31
    iget-object p1, v5, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 32
    iget-object p1, v5, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;->selectedFilters:Ljava/util/Set;

    sget-object v0, Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;->POPULAR_HIGHLIGHT:Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$NotebookFilter;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget p1, Lcom/amazon/kindle/krl/R$id;->notes_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;

    .line 34
    iget-object p1, p0, Lcom/amazon/kcp/reader/NotesActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v4, p0, p1, v5}, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->setAnnotationListAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V

    .line 36
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->getAnnotationsListView()Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->listView:Landroid/widget/ListView;

    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->defaultPadding:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/widget/ListView;->getPaddingLeft()I

    move-result p1

    iget-object v1, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 39
    iget-object p1, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->listView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->defaultPadding:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/ViewUtils;->setHorizontalSafePadding(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 40
    new-instance p1, Lcom/amazon/kcp/reader/NotesListEventHandler;

    iget-object v2, p0, Lcom/amazon/kcp/reader/NotesActivity;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v3, p0, Lcom/amazon/kcp/reader/PopularHighlightsActivity;->listView:Landroid/widget/ListView;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/NotesListEventHandler;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/widget/ListView;Lcom/amazon/kcp/reader/ui/NotesScreenLayout;Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesActivity;->notesListEventHandler:Lcom/amazon/kcp/reader/NotesListEventHandler;

    :cond_0
    return-void
.end method
