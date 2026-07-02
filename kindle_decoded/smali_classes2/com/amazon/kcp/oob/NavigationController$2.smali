.class Lcom/amazon/kcp/oob/NavigationController$2;
.super Ljava/lang/Object;
.source "NavigationController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/oob/NavigationController;->preactivateEligibleTabsWithDelayIfNecessary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/oob/NavigationController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/oob/NavigationController;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$100(Lcom/amazon/kcp/oob/NavigationController;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$200(Lcom/amazon/kcp/oob/NavigationController;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 213
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$300(Lcom/amazon/kcp/oob/NavigationController;)Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 216
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0}, Lcom/amazon/kcp/oob/NavigationController;->access$400(Lcom/amazon/kcp/oob/NavigationController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;

    .line 217
    iget-object v3, v1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->tab:Lcom/amazon/kindle/krx/ui/LandingScreenTab;

    .line 218
    iget-object v4, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v4}, Lcom/amazon/kcp/oob/NavigationController;->access$500(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->isPreactivationRequired(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v1, Lcom/amazon/kcp/oob/NavigationController$TabHandle;->backstack:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 219
    iget-object v4, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v4}, Lcom/amazon/kcp/oob/NavigationController;->access$500(Lcom/amazon/kcp/oob/NavigationController;)Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/ui/LandingScreenTab;->getRootIntent(Lcom/amazon/kindle/krx/ui/LandingScreenTabContext;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object v3

    .line 220
    iget-object v4, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    const/4 v5, 0x0

    invoke-static {v4, v3, v1, v2, v5}, Lcom/amazon/kcp/oob/NavigationController;->access$600(Lcom/amazon/kcp/oob/NavigationController;Lcom/amazon/kindle/krx/ui/ScreenletIntent;Lcom/amazon/kcp/oob/NavigationController$TabHandle;ZLcom/amazon/kindle/krx/ui/ScreenletReason;)V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/oob/NavigationController$2;->this$0:Lcom/amazon/kcp/oob/NavigationController;

    invoke-static {v0, v2}, Lcom/amazon/kcp/oob/NavigationController;->access$102(Lcom/amazon/kcp/oob/NavigationController;Z)Z

    return-void
.end method
