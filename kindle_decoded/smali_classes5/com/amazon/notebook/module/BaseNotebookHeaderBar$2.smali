.class Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;
.super Ljava/lang/Object;
.source "BaseNotebookHeaderBar.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


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

    .line 218
    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public listIsAtTop(Landroid/widget/ExpandableListView;)Z
    .locals 2

    .line 240
    invoke-virtual {p1}, Landroid/widget/ExpandableListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 241
    invoke-virtual {p1, v0}, Landroid/widget/ExpandableListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 226
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-static {p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->access$200(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)Landroid/widget/ExpandableListView;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;->listIsAtTop(Landroid/widget/ExpandableListView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 227
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-static {p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->access$200(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)Landroid/widget/ExpandableListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-static {p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->access$200(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)Landroid/widget/ExpandableListView;

    move-result-object p1

    new-instance p2, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2$1;

    invoke-direct {p2, p0}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2$1;-><init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar$2;)V

    invoke-virtual {p1, p2}, Landroid/widget/ExpandableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_0
    return-void
.end method
