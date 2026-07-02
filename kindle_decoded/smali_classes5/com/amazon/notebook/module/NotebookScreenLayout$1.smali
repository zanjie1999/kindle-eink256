.class Lcom/amazon/notebook/module/NotebookScreenLayout$1;
.super Landroid/database/DataSetObserver;
.source "NotebookScreenLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookScreenLayout;->setAnnotationListAdapter(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/os/Bundle;Lcom/amazon/notebook/module/NotebookNoteTools;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

.field final synthetic val$positionOffset:I

.field final synthetic val$positionOverride:I

.field final synthetic val$startItemIndex:I


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookScreenLayout;III)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    iput p2, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->val$positionOverride:I

    iput p3, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->val$positionOffset:I

    iput p4, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->val$startItemIndex:I

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$000(Lcom/amazon/notebook/module/NotebookScreenLayout;)Lcom/amazon/notebook/module/NotebookArrayAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$000(Lcom/amazon/notebook/module/NotebookScreenLayout;)Lcom/amazon/notebook/module/NotebookArrayAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$000(Lcom/amazon/notebook/module/NotebookScreenLayout;)Lcom/amazon/notebook/module/NotebookArrayAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/Note;->SPINNER:Lcom/amazon/kcp/reader/Note;

    if-eq v0, v1, :cond_1

    .line 95
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$100(Lcom/amazon/notebook/module/NotebookScreenLayout;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v1}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$000(Lcom/amazon/notebook/module/NotebookScreenLayout;)Lcom/amazon/notebook/module/NotebookArrayAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 96
    iget v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->val$positionOverride:I

    if-ltz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$100(Lcom/amazon/notebook/module/NotebookScreenLayout;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->val$positionOverride:I

    iget v2, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->val$positionOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$100(Lcom/amazon/notebook/module/NotebookScreenLayout;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->val$startItemIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 101
    :goto_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$200(Lcom/amazon/notebook/module/NotebookScreenLayout;)V

    .line 102
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->updateExportButtons()V

    .line 103
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$1;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$000(Lcom/amazon/notebook/module/NotebookScreenLayout;)Lcom/amazon/notebook/module/NotebookArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/ArrayAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_1
    return-void
.end method
