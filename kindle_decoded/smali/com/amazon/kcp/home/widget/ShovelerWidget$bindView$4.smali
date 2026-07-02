.class final synthetic Lcom/amazon/kcp/home/widget/ShovelerWidget$bindView$4;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "ShovelerWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/ShovelerWidget;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/view/View;",
        "Lcom/amazon/kindle/home/model/HomeAction;",
        "Lcom/amazon/kindle/home/action/ActionStatus;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/ShovelerWidget;)V
    .locals 7

    const-class v3, Lcom/amazon/kcp/home/widget/ShovelerWidget;

    const/4 v1, 0x3

    const-string/jumbo v4, "reportAction"

    const-string/jumbo v5, "reportAction(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Landroid/view/View;

    check-cast p2, Lcom/amazon/kindle/home/model/HomeAction;

    check-cast p3, Lcom/amazon/kindle/home/action/ActionStatus;

    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/ShovelerWidget$bindView$4;->invoke(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V
    .locals 1

    const-string/jumbo v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "p2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kcp/home/widget/ShovelerWidget;

    .line 93
    invoke-static {v0, p1, p2, p3}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->access$reportAction(Lcom/amazon/kcp/home/widget/ShovelerWidget;Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Lcom/amazon/kindle/home/action/ActionStatus;)V

    return-void
.end method
