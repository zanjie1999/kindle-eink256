.class final synthetic Lcom/amazon/kcp/home/widget/NISWidget$bindView$6$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "NISWidget.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/NISWidget;->bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1018
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/actions/ActionHandler;)V
    .locals 7

    const-class v3, Lcom/amazon/kcp/home/actions/ActionHandler;

    const/4 v1, 0x1

    const-string/jumbo v4, "onClick"

    const-string/jumbo v5, "onClick(Landroid/view/View;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/home/widget/NISWidget$bindView$6$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "p1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/amazon/kcp/home/actions/ActionHandler;

    .line 158
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/actions/ActionHandler;->onClick(Landroid/view/View;)V

    return-void
.end method
