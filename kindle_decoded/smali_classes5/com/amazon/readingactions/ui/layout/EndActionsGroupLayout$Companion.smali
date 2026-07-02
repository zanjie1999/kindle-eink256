.class public final Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;
.super Ljava/lang/Object;
.source "EndActionsGroupLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEndActionsGroupLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EndActionsGroupLayout.kt\ncom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,220:1\n1282#2,9:221\n1497#2:230\n1282#2,9:231\n1497#2,2:240\n1291#2:242\n1498#2:243\n1291#2:244\n*E\n*S KotlinDebug\n*F\n+ 1 EndActionsGroupLayout.kt\ncom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion\n*L\n61#1,9:221\n61#1:230\n61#1,9:231\n61#1,2:240\n61#1:242\n61#1:243\n61#1:244\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;-><init>()V

    return-void
.end method

.method private final getTAG()Ljava/lang/String;
    .locals 1

    .line 39
    invoke-static {}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final resolveGroups(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/ea/sidecar/def/layouts/GroupDef;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 230
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 229
    check-cast v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;

    .line 62
    iget-object v2, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->slots:Ljava/util/List;

    const-string v3, "groupDef.slots"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->flatten(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 231
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 240
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 239
    check-cast v4, Ljava/lang/String;

    .line 62
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/ui/widget/WidgetController;

    if-eqz v4, :cond_1

    .line 239
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 63
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 65
    sget-object v2, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;->Companion:Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;

    invoke-direct {v2}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No widgets resolved for group "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->title:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; skipping group."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    .line 69
    :cond_4
    new-instance v2, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;

    iget-object v4, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->title:Ljava/lang/String;

    iget-boolean v1, v1, Lcom/amazon/ea/sidecar/def/layouts/GroupDef;->fullWidth:Z

    invoke-direct {v2, v4, v3, v1}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Group;-><init>(Ljava/lang/String;Ljava/util/List;Z)V

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_0

    .line 229
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public final tryCreate(Landroid/app/Activity;Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/ui/layout/LayoutController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;)",
            "Lcom/amazon/ea/ui/layout/LayoutController;"
        }
    .end annotation

    const-string v0, "endActionsActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "def"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "widgets"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object p2, p2, Lcom/amazon/readingactions/sidecar/def/layout/GroupLayoutDef;->groups:Ljava/util/List;

    const-string v0, "def.groups"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;->resolveGroups(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 43
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 44
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout$Companion;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "No groups resolved for layout; layout is invalid."

    invoke-static {p1, p2}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 50
    :cond_1
    new-instance p3, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;

    invoke-direct {p3, p1, p2}, Lcom/amazon/readingactions/ui/layout/EndActionsGroupLayout;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    return-object p3
.end method
