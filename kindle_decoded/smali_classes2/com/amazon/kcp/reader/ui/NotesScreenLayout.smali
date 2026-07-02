.class public Lcom/amazon/kcp/reader/ui/NotesScreenLayout;
.super Landroid/widget/FrameLayout;
.source "NotesScreenLayout.java"


# instance fields
.field private listView:Landroid/widget/ListView;

.field private noAnnotationsView:Landroid/widget/TextView;

.field private topDivider:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public getAnnotationsListView()Landroid/widget/ListView;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 35
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 37
    sget v0, Lcom/amazon/kindle/krl/R$id;->list_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->listView:Landroid/widget/ListView;

    .line 38
    sget v0, Lcom/amazon/kindle/krl/R$id;->zero_notes_notification:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->noAnnotationsView:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/amazon/kindle/krl/R$id;->notes_list_top_divider:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->topDivider:Landroid/widget/FrameLayout;

    return-void
.end method

.method public setAnnotationListAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->listView:Landroid/widget/ListView;

    invoke-static {p1, p2, p3}, Lcom/amazon/kcp/reader/NotesArrayAdapter;->createAdapter(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/notebook/NotebookHeaderBar$AdvancedNotebookFilter;)Lcom/amazon/kcp/reader/NotesArrayAdapter;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 26
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->updateContent()V

    return-void
.end method

.method public updateContent()V
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->noAnnotationsView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->topDivider:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->noAnnotationsView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/NotesScreenLayout;->topDivider:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
