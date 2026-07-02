.class Lcom/amazon/kindle/panels/LavaPanelProvider$1;
.super Ljava/lang/Object;
.source "LavaPanelProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/LavaPanelProvider;->updateCurrentReadChapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/LavaPanelProvider;

.field final synthetic val$adapter:Lcom/amazon/kindle/panels/TOCTreeViewAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/LavaPanelProvider;Lcom/amazon/kindle/panels/TOCTreeViewAdapter;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amazon/kindle/panels/LavaPanelProvider$1;->this$0:Lcom/amazon/kindle/panels/LavaPanelProvider;

    iput-object p2, p0, Lcom/amazon/kindle/panels/LavaPanelProvider$1;->val$adapter:Lcom/amazon/kindle/panels/TOCTreeViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/panels/LavaPanelProvider$1;->val$adapter:Lcom/amazon/kindle/panels/TOCTreeViewAdapter;

    iget v0, v0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentSelectedPosition:I

    .line 164
    invoke-static {}, Lcom/amazon/kindle/panels/LavaPanelProvider;->access$000()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCurrentReadChapter currentSelectedPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/amazon/kindle/panels/LavaPanelProvider$1;->this$0:Lcom/amazon/kindle/panels/LavaPanelProvider;

    iget-object v1, v1, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method
