.class Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController$1;
.super Ljava/lang/Object;
.source "VerticalListWithShareActionLayoutController.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController;->onPrepareOptionsMenu(Landroid/view/Menu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/layout/verticallistwithshareaction/VerticalListWithShareActionLayoutController;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 55
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    sget v0, Lcom/amazon/kindle/ea/R$id;->menu_share_icon:I

    if-ne p1, v0, :cond_1

    const-string/jumbo p1, "sfh"

    const-string/jumbo v0, "ss"

    .line 58
    invoke-static {p1, v0}, Lcom/amazon/ea/metrics/RefTagHelper;->getReftagForChromeAction(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "END_ACTIONS_ACTION_BAR"

    .line 57
    invoke-static {p1, v0}, Lcom/amazon/ea/ui/helper/ShareHelper;->shareBook(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 63
    invoke-static {}, Lcom/amazon/ea/metrics/RefTagHelper;->getLayoutModelMetricsTag()Ljava/lang/String;

    move-result-object p1

    .line 64
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v2, "ShareActionBarIconClicked"

    invoke-static {v2}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 65
    sget-object v1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    invoke-static {v2, p1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 66
    invoke-static {v0}, Lcom/amazon/ea/guava/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "MetricsTag"

    .line 67
    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v2, "AnyActionsVerticalListWithShareActionLayout"

    const-string v3, "Recommend"

    .line 69
    invoke-interface {p1, v2, v3, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
