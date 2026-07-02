.class Lcom/amazon/notebook/module/BaseNotebookHeaderBar$3;
.super Ljava/lang/Object;
.source "BaseNotebookHeaderBar.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$3;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 0

    .line 251
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    .line 252
    iget-object p2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$3;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-virtual {p2, p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->handleListViewClick(Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;)V

    const/4 p1, 0x0

    return p1
.end method
