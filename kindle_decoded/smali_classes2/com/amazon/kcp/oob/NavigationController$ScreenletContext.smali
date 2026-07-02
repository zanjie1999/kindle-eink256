.class final Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;
.super Lcom/amazon/kindle/krx/ui/BaseScreenletContext;
.source "NavigationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/oob/NavigationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenletContext"
.end annotation


# instance fields
.field private final tabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

.field private final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kcp/oob/NavigationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kcp/oob/NavigationController$TabHandle;Ljava/lang/String;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/ui/BaseScreenletContext;-><init>()V

    .line 743
    iput-object p2, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->tabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    .line 744
    iput-object p3, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->tag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1

    .line 735
    invoke-virtual {p0}, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public getActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$300(Lcom/amazon/kcp/oob/NavigationController;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsContext()Ljava/lang/String;
    .locals 2

    .line 779
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->tabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v0, v0, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v1}, Lcom/amazon/kcp/oob/NavigationController;->access$500(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getMetricsTag(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public launchScreenlet(Lcom/amazon/kindle/krx/ui/ScreenletIntent;)V
    .locals 3

    .line 762
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->tabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v1}, Lcom/amazon/kcp/oob/NavigationController;->access$1000(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 763
    invoke-static {}, Lcom/amazon/kcp/oob/NavigationController;->access$700()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempt to launch screenlet in non-current tab ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->tabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], aborting..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    invoke-static {p1, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->tabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    sget-object v2, Lcom/amazon/kindle/krx/ui/ScreenletReason;->INLINE_SCREENLET_LAUNCH:Lcom/amazon/kindle/krx/ui/ScreenletReason;

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/kcp/oob/NavigationController;->access$1100(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kcp/oob/NavigationController$TabHandle;Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kindle/krx/ui/ScreenletReason;)V

    return-void
.end method

.method public notifyCanGoBackChanged()V
    .locals 2

    .line 772
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->tabHandle:Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    iget-object v1, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v1}, Lcom/amazon/kcp/oob/NavigationController;->access$1000(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 773
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$ScreenletContext;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$1200(Lcom/amazon/kcp/oob/NavigationController;)V

    :cond_0
    return-void
.end method
