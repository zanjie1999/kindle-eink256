.class Lcom/amazon/notebook/module/BaseNotebookHeaderBar$1;
.super Ljava/lang/Object;
.source "BaseNotebookHeaderBar.java"

# interfaces
.implements Lcom/amazon/notebook/module/NotebookShareHelper$OnSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/notebook/module/BaseNotebookHeaderBar;
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

    .line 109
    iput-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$1;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelection(Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;)V
    .locals 1

    .line 112
    sget-object v0, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;->SHARE:Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    if-ne p1, v0, :cond_0

    .line 113
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$1;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-static {p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->access$000(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    goto :goto_0

    .line 114
    :cond_0
    sget-object v0, Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;->FLASHCARDS:Lcom/amazon/notebook/module/NotebookShareHelper$NotebookExportTarget;

    if-ne p1, v0, :cond_2

    .line 115
    invoke-static {}, Lcom/amazon/notebook/module/NotebookActivity;->getNotebookPluginEventsListener()Lcom/amazon/notebook/module/INotebookPluginEventsListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 117
    invoke-interface {p1}, Lcom/amazon/notebook/module/INotebookPluginEventsListener;->onExportToFlashcardsClicked()V

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$1;->this$0:Lcom/amazon/notebook/module/BaseNotebookHeaderBar;

    invoke-static {p1}, Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->access$100(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;)V

    :cond_2
    :goto_0
    return-void
.end method
