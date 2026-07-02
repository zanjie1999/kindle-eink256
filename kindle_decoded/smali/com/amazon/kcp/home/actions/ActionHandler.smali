.class public final Lcom/amazon/kcp/home/actions/ActionHandler;
.super Ljava/lang/Object;
.source "ActionHandler.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private final card:Lcom/amazon/kindle/home/model/CardData;

.field private final executor:Lcom/amazon/kcp/home/actions/ActionExecutor;

.field private final postCallback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final preCallback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Landroid/view/View;",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/home/model/CardData;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "-",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Landroid/view/View;",
            "-",
            "Lcom/amazon/kindle/home/model/HomeAction;",
            "-",
            "Lcom/amazon/kindle/home/action/ActionStatus;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->card:Lcom/amazon/kindle/home/model/CardData;

    iput-object p2, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->preCallback:Lkotlin/jvm/functions/Function3;

    iput-object p3, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->postCallback:Lkotlin/jvm/functions/Function3;

    .line 38
    new-instance p1, Lcom/amazon/kcp/home/actions/ActionExecutor;

    invoke-direct {p1}, Lcom/amazon/kcp/home/actions/ActionExecutor;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->executor:Lcom/amazon/kcp/home/actions/ActionExecutor;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->card:Lcom/amazon/kindle/home/model/CardData;

    const-string/jumbo v1, "tap"

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/home/actions/ActionHandlerKt;->access$actionForKey(Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    iget-object v1, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->preCallback:Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->executor:Lcom/amazon/kcp/home/actions/ActionExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->card:Lcom/amazon/kindle/home/model/CardData;

    iget-object v3, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->postCallback:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/amazon/kcp/home/actions/ActionExecutor;->execute(Landroid/view/View;Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z

    :cond_1
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->card:Lcom/amazon/kindle/home/model/CardData;

    const-string v1, "hold"

    invoke-static {p1, v1, v0}, Lcom/amazon/kcp/home/actions/ActionHandlerKt;->access$actionForKey(Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    iget-object v1, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->preCallback:Lkotlin/jvm/functions/Function3;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Unit;

    .line 50
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->executor:Lcom/amazon/kcp/home/actions/ActionExecutor;

    iget-object v2, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->card:Lcom/amazon/kindle/home/model/CardData;

    iget-object v3, p0, Lcom/amazon/kcp/home/actions/ActionHandler;->postCallback:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v1, p1, v2, v3, v0}, Lcom/amazon/kcp/home/actions/ActionExecutor;->execute(Landroid/view/View;Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
