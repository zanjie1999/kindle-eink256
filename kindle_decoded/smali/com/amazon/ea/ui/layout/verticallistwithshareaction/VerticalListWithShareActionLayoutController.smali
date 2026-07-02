.class public Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController;
.super Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;
.source "VerticalListWithShareActionLayoutController.java"


# static fields
.field private static final HEADER_SHARE_ACTION_REFTAG_PARTIAL:Ljava/lang/String; = "sfh"

.field private static final SOCIAL_SHARING_ENTRY_POINT_END_ACTIONS_ACTION_BAR:Ljava/lang/String; = "END_ACTIONS_ACTION_BAR"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;-><init>(Landroid/app/Activity;Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method protected initLayoutMetrics()V
    .locals 2

    .line 83
    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->isSharingSupported()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "ShareActionBarIconUnsupported"

    invoke-static {v0, v1}, Lcom/amazon/ea/metrics/M;->condSet(ZLjava/lang/String;)Z

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->initMetricsForShareIconNotShown()V

    goto :goto_0

    .line 86
    :cond_0
    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->initMetricsForShareIconShown()V

    :goto_0
    return-void
.end method

.method protected logMetricOnScrollChanged()V
    .locals 1

    const-string v0, "AnyActionsVerticalListWithShareActionLayout"

    .line 92
    invoke-virtual {p0, v0}, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->logMetricOnScrollChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .line 48
    invoke-static {}, Lcom/amazon/ea/ui/helper/ShareHelper;->isSharingSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$menu;->endactions_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 51
    sget v0, Lcom/amazon/kindle/ea/R$id;->menu_share_icon:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 52
    new-instance v0, Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController$1;

    invoke-direct {v0, p0}, Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController$1;-><init>(Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
