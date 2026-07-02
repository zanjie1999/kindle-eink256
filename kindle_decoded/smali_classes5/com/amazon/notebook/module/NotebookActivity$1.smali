.class Lcom/amazon/notebook/module/NotebookActivity$1;
.super Ljava/lang/Object;
.source "NotebookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookActivity;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookActivity;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity$1;->this$0:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 194
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity$1;->this$0:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookActivity;->access$000(Lcom/amazon/notebook/module/NotebookActivity;)Lcom/amazon/notebook/module/NotebookScreenLayout;

    move-result-object p1

    sget v0, Lcom/amazon/notebook/module/R$id;->selected_filter_bar:I

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object p1, p0, Lcom/amazon/notebook/module/NotebookActivity$1;->this$0:Lcom/amazon/notebook/module/NotebookActivity;

    invoke-static {p1}, Lcom/amazon/notebook/module/NotebookActivity;->access$100(Lcom/amazon/notebook/module/NotebookActivity;)Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->clearFilter()V

    return-void
.end method
