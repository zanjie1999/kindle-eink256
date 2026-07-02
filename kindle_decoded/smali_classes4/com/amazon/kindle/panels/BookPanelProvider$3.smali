.class Lcom/amazon/kindle/panels/BookPanelProvider$3;
.super Ljava/lang/Object;
.source "BookPanelProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/BookPanelProvider;->updateCurrentFalkorEpisode(Lcom/amazon/kindle/panels/IPanelCustomItem;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

.field final synthetic val$panelItem:Lcom/amazon/kindle/panels/IPanelCustomItem;

.field final synthetic val$parentView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/BookPanelProvider;Lcom/amazon/kindle/panels/IPanelCustomItem;Landroid/view/View;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$3;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    iput-object p2, p0, Lcom/amazon/kindle/panels/BookPanelProvider$3;->val$panelItem:Lcom/amazon/kindle/panels/IPanelCustomItem;

    iput-object p3, p0, Lcom/amazon/kindle/panels/BookPanelProvider$3;->val$parentView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 298
    iget-object v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider$3;->val$panelItem:Lcom/amazon/kindle/panels/IPanelCustomItem;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$3;->val$parentView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 299
    invoke-interface {v0, v1}, Lcom/amazon/kindle/panels/IPanelCustomItem;->getSelectedView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 305
    iget-object v1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$3;->val$parentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-double v2, v0

    int-to-double v4, v1

    div-double/2addr v2, v4

    const/16 v1, 0xc8

    const-wide v4, 0x4085e00000000000L    # 700.0

    mul-double v4, v4, v2

    double-to-int v4, v4

    .line 309
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 310
    invoke-static {}, Lcom/amazon/kindle/panels/BookPanelProvider;->access$200()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCurrentFalkorEpisode percent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", duration: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    iget-object v2, p0, Lcom/amazon/kindle/panels/BookPanelProvider$3;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    iget-object v2, v2, Lcom/amazon/kindle/panels/BasePanelProvider;->navPanelTOCListView:Landroid/widget/ListView;

    const/4 v3, 0x0

    neg-int v0, v0

    invoke-virtual {v2, v3, v0, v1}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    :cond_0
    return-void
.end method
