.class Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;
.super Ljava/lang/Object;
.source "NotebookDropdownAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookDropdownAdapter;->getItemView(Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;Landroid/view/View;Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookDropdownAdapter;

.field final synthetic val$filterItem:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookDropdownAdapter;Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;->this$0:Lcom/amazon/notebook/module/NotebookDropdownAdapter;

    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;->val$filterItem:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 181
    invoke-static {}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->access$100()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 182
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 183
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;->this$0:Lcom/amazon/notebook/module/NotebookDropdownAdapter;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookDropdownAdapter;->access$200(Lcom/amazon/notebook/module/NotebookDropdownAdapter;)Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/notebook/module/NotebookDropdownAdapter$1;->val$filterItem:Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;

    invoke-virtual {p1, p2}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->handleListViewClick(Lcom/amazon/notebook/module/NotebookDropdownAdapter$FilterItem;)V

    :cond_0
    return-void
.end method
