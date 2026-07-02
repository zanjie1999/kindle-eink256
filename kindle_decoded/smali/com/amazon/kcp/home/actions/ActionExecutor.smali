.class public final Lcom/amazon/kcp/home/actions/ActionExecutor;
.super Ljava/lang/Object;
.source "ActionExecutor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nActionExecutor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActionExecutor.kt\ncom/amazon/kcp/home/actions/ActionExecutor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,62:1\n1819#2,2:63\n*E\n*S KotlinDebug\n*F\n+ 1 ActionExecutor.kt\ncom/amazon/kcp/home/actions/ActionExecutor\n*L\n27#1,2:63\n*E\n"
.end annotation


# instance fields
.field private final providers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/home/action/HomeActionProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final supportedActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/home/actions/ActionExecutor;->providers:Ljava/util/Map;

    .line 27
    const-class v0, Lcom/amazon/kindle/home/action/HomeActionProvider;

    invoke-static {v0}, Lcom/amazon/discovery/Discoveries;->of(Ljava/lang/Class;)Lcom/amazon/discovery/Discoveries;

    move-result-object v0

    const-string v1, "Discoveries.of(HomeActionProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/action/HomeActionProvider;

    .line 28
    iget-object v2, p0, Lcom/amazon/kcp/home/actions/ActionExecutor;->providers:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/kindle/home/action/HomeActionProvider;->getActionKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/ActionExecutor;->providers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/home/actions/ActionExecutor;->supportedActions:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final execute(Landroid/view/View;Lcom/amazon/kindle/home/model/CardData;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
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
            "Lcom/amazon/kindle/home/model/HomeAction;",
            ")Z"
        }
    .end annotation

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "card"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p4}, Lcom/amazon/kindle/home/model/HomeAction;->getArgs()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->toMutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "reftag"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getReftag()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "card_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "template_id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing action: card="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; event="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/amazon/kindle/home/model/HomeAction;->getEvent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "; action="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    iget-object p2, p0, Lcom/amazon/kcp/home/actions/ActionExecutor;->providers:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/amazon/kindle/home/model/HomeAction;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/home/action/HomeActionProvider;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1, p4, v0, p3}, Lcom/amazon/kindle/home/action/HomeActionProvider;->execute(Landroid/view/View;Lcom/amazon/kindle/home/model/HomeAction;Ljava/util/Map;Lkotlin/jvm/functions/Function3;)Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isExecutable(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/home/actions/ActionExecutor;->supportedActions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
