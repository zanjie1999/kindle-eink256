.class public Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;
.super Ljava/lang/Object;
.source "VerticalListLayoutModelBuilder.java"


# static fields
.field private static final REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.model.layout.verticallist.VerticalListLayoutModelBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 21
    sget-object v1, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 22
    invoke-static {v0}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;

    return-void
.end method

.method public static build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)",
            "Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;"
        }
    .end annotation

    .line 34
    invoke-static {p0, p1}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->getWidgetModels(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/Map;)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-static {p0, p1}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->canGetValidVerticalListLayoutModel(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_0
    new-instance v0, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->metricsTag:Ljava/lang/String;

    invoke-direct {v0, p0, p1}, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0
.end method

.method public static canGetValidVerticalListLayoutModel(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 44
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 45
    sget-object p0, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Invalid: widgetModels is null."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0

    .line 50
    :cond_1
    invoke-static {}, Lcom/amazon/ea/guava/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 52
    iget-object v2, v2, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    :cond_2
    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->requiredWidgets:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 55
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 56
    sget-object p0, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Invalid: missing required widgets."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return v0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static getWidgetModels(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;->widgetSlots:Ljava/util/List;

    sget-object v0, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModelBuilder;->REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;

    invoke-static {p0, p1, v0, v1}, Lcom/amazon/ea/model/layout/LayoutModelBuilderUtil;->getWidgetModels(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
