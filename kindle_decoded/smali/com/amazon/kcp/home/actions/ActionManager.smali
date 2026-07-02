.class public final Lcom/amazon/kcp/home/actions/ActionManager;
.super Ljava/lang/Object;
.source "ActionHandler.kt"

# interfaces
.implements Lcom/amazon/kindle/home/action/HomeActionManager;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionHandler.kt\ncom/amazon/kcp/home/actions/ActionManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,104:1\n13506#2:105\n13507#2:107\n1#3:106\n*E\n*S KotlinDebug\n*F\n+ 1 ActionHandler.kt\ncom/amazon/kcp/home/actions/ActionManager\n*L\n68#1:105\n68#1:107\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs registerActions(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;[Landroid/view/View;)V
    .locals 3
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
            ">;[",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "views"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/amazon/kcp/home/actions/ActionHandler;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/home/actions/ActionHandler;-><init>(Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V

    .line 105
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_2

    aget-object v1, p4, p3

    const-string/jumbo v2, "tap"

    .line 69
    invoke-static {v1, v2, p1}, Lcom/amazon/kcp/home/actions/ActionHandlerKt;->access$actionForKey(Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const-string v2, "hold"

    .line 70
    invoke-static {v1, v2, p1}, Lcom/amazon/kcp/home/actions/ActionHandlerKt;->access$actionForKey(Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
