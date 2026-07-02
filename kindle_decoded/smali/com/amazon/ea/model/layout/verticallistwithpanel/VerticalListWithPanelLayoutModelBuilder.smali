.class public Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;
.super Ljava/lang/Object;
.source "VerticalListWithPanelLayoutModelBuilder.java"


# static fields
.field private static final BODY_REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final PANEL_REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.model.layout.verticallistwithpanel.VerticalListWithPanelLayoutModelBuilder"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 23
    sget-object v2, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 24
    invoke-static {v1}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v1

    sput-object v1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->BODY_REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 26
    sget-object v2, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FIXED_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/amazon/ea/guava/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->PANEL_REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;

    return-void
.end method

.method public static build(Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;Ljava/util/Map;)Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lcom/amazon/ea/model/widget/WidgetModel;",
            ">;)",
            "Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;"
        }
    .end annotation

    .line 40
    invoke-static {}, Lcom/amazon/ea/util/ConfigurationUtil;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 42
    sget-object p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Invalid: side panel disabled for non-tablets, as there is not enough space in landscape."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->bodyWidgetSlots:Ljava/util/List;

    sget-object v2, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->TAG:Ljava/lang/String;

    sget-object v3, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->BODY_REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;

    invoke-static {v0, p1, v2, v3}, Lcom/amazon/ea/model/layout/LayoutModelBuilderUtil;->getWidgetModels(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 50
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 51
    sget-object p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Invalid: bodyWidgetModels is null."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 56
    :cond_3
    iget-object v2, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListWithPanelLayoutDef;->panelWidgetSlots:Ljava/util/List;

    sget-object v3, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->TAG:Ljava/lang/String;

    sget-object v4, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->PANEL_REQUIRED_DISPLAY_FORMATS:Ljava/util/Set;

    invoke-static {v2, p1, v3, v4}, Lcom/amazon/ea/model/layout/LayoutModelBuilderUtil;->getWidgetModels(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;Ljava/util/Set;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_5

    .line 59
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 60
    sget-object p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Invalid: panelWidgetModels is null."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object v1

    .line 65
    :cond_5
    invoke-static {}, Lcom/amazon/ea/guava/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 66
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 67
    iget-object v4, v4, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 69
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ea/model/widget/WidgetModel;

    .line 70
    iget-object v4, v4, Lcom/amazon/ea/model/widget/WidgetModel;->id:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    :cond_7
    iget-object v3, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->requiredWidgets:Ljava/util/Set;

    invoke-interface {v2, v3}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 73
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 74
    sget-object p0, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModelBuilder;->TAG:Ljava/lang/String;

    const-string p1, "Invalid: missing required widgets."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-object v1

    .line 79
    :cond_9
    new-instance v1, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->metricsTag:Ljava/lang/String;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method
