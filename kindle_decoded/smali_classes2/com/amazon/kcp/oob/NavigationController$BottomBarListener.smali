.class final Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;
.super Ljava/lang/Object;
.source "NavigationController.java"

# interfaces
.implements Lcom/amazon/kcp/library/ui/bottombar/IBottomBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/oob/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BottomBarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/NavigationController;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/oob/NavigationController;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kcp/oob/NavigationController$1;)V
    .locals 0

    .line 341
    invoke-direct {p0, p1}, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;-><init>(Lcom/amazon/kcp/oob/NavigationController;)V

    return-void
.end method


# virtual methods
.method public onItemReselected(I)V
    .locals 2

    .line 353
    invoke-static {}, Lcom/amazon/kcp/oob/NavigationController;->access$700()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemReselected, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 354
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$400(Lcom/amazon/kcp/oob/NavigationController;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v1, p1}, Lcom/amazon/kcp/oob/NavigationController;->access$800(Lcom/amazon/kcp/oob/NavigationController;I)I

    move-result p1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object p1, p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$500(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics;->reportNavBarTap(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    sget-object v0, Lcom/amazon/kindle/krx/ui/ScreenletReason;->BOTTOM_BAR_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-static {p1, v0}, Lcom/amazon/kcp/oob/NavigationController;->access$900(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    return-void
.end method

.method public onItemSelected(I)V
    .locals 2

    .line 344
    invoke-static {}, Lcom/amazon/kcp/oob/NavigationController;->access$700()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemSelected, index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0, p1}, Lcom/amazon/kcp/oob/NavigationController;->access$800(Lcom/amazon/kcp/oob/NavigationController;I)I

    move-result p1

    .line 346
    invoke-static {}, Lcom/amazon/kcp/oob/NavigationController;->access$700()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Tab index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$400(Lcom/amazon/kcp/oob/NavigationController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v1}, Lcom/amazon/kcp/oob/NavigationController;->access$500(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/OutOfBookNavBarsFastMetrics;->reportNavBarTap(Ljava/lang/String;)V

    .line 348
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$BottomBarListener;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$400(Lcom/amazon/kcp/oob/NavigationController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    sget-object v1, Lcom/amazon/kindle/krx/ui/ScreenletReason;->BOTTOM_BAR_BUTTON_TAP:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/oob/NavigationController;->handleTabSelected(Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    return-void
.end method
