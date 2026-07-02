.class Lcom/amazon/notebook/module/NotebookArrayAdapter$3;
.super Ljava/lang/Object;
.source "NotebookArrayAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$noteListItem:Landroid/view/View;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookArrayAdapter;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 466
    iput-object p2, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$3;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$3;->val$noteListItem:Landroid/view/View;

    iput p4, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 469
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$3;->val$parent:Landroid/view/ViewGroup;

    check-cast p1, Landroid/widget/ListView;

    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$3;->val$noteListItem:Landroid/view/View;

    iget v1, p0, Lcom/amazon/notebook/module/NotebookArrayAdapter$3;->val$position:I

    int-to-long v2, v1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    return-void
.end method
