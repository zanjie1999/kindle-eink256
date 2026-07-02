.class Lcom/amazon/notebook/module/NotebookScreenLayout$2;
.super Ljava/lang/Object;
.source "NotebookScreenLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/NotebookScreenLayout;->dismissSpinner()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/NotebookScreenLayout;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$2;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$2;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-virtual {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->canBeScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$2;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$100(Lcom/amazon/notebook/module/NotebookScreenLayout;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    goto :goto_0

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/amazon/notebook/module/NotebookScreenLayout$2;->this$0:Lcom/amazon/notebook/module/NotebookScreenLayout;

    invoke-static {v0}, Lcom/amazon/notebook/module/NotebookScreenLayout;->access$100(Lcom/amazon/notebook/module/NotebookScreenLayout;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    :goto_0
    return-void
.end method
