.class public Lcom/amazon/startactions/ui/layout/VerticalListLayout;
.super Lcom/amazon/startactions/ui/layout/LayoutBase;
.source "VerticalListLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.layout.VerticalListLayout"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/widget/Widget;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p3}, Lcom/amazon/startactions/ui/layout/LayoutBase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iput-object p2, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;Lcom/amazon/startactions/ui/layout/IWidgetProvider;Ljava/lang/String;)Lcom/amazon/startactions/ui/layout/VerticalListLayout;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->requiredWidgets:Ljava/util/Set;

    invoke-interface {p1, v0}, Lcom/amazon/startactions/ui/layout/IWidgetProvider;->hasWidgets(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 47
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 48
    sget-object p0, Lcom/amazon/startactions/ui/layout/VerticalListLayout;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "required widgets not present in list of available widgets, invalidating layout."

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/layouts/VerticalListLayoutDef;->widgetSlots:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/amazon/startactions/ui/layout/LayoutBase;->filterWidgetsForSlots(Ljava/util/List;Lcom/amazon/startactions/ui/layout/IWidgetProvider;)Ljava/util/List;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/amazon/startactions/ui/layout/VerticalListLayout;

    iget-object p0, p0, Lcom/amazon/ea/sidecar/def/layouts/LayoutDef;->metricsTag:Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/startactions/ui/layout/VerticalListLayout;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method protected createViewImpl(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;
    .locals 15

    move-object v0, p0

    .line 76
    invoke-interface/range {p1 .. p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/ea/R$layout;->endactions_layout_vertical_list:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_widget_container:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 80
    sget v3, Lcom/amazon/kindle/ea/R$id;->startactions_widget_scroller:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/ScrollView;

    .line 81
    new-instance v10, Lcom/amazon/ea/ui/AnimationCoordinator;

    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 82
    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    invoke-direct {v10, v3, v9}, Lcom/amazon/ea/ui/AnimationCoordinator;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 86
    iget-object v3, v0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v3, 0x1

    const/4 v3, 0x0

    const/4 v13, 0x1

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/startactions/ui/widget/Widget;

    .line 87
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 88
    sget-object v5, Lcom/amazon/startactions/ui/layout/VerticalListLayout;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "inserting widget of type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-nez v13, :cond_1

    .line 91
    invoke-interface/range {p1 .. p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/ea/R$layout;->endactions_list_divider:I

    invoke-virtual {v5, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_1
    add-int/lit8 v14, v3, 0x1

    const-string v5, "b"

    .line 94
    invoke-static {v5, v3}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->reftagForPositionInLayout(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    move-object v3, v4

    move-object/from16 v4, p1

    move-object v5, v2

    move-object v7, v10

    move-object/from16 v8, p2

    .line 96
    invoke-interface/range {v3 .. v8}, Lcom/amazon/startactions/ui/widget/Widget;->bindToUi(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_2

    move v3, v14

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v3, v14

    const/4 v13, 0x0

    goto :goto_0

    .line 108
    :cond_3
    invoke-virtual {v9}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/amazon/startactions/ui/layout/VerticalListLayout$1;

    invoke-direct {v3, p0, v9}, Lcom/amazon/startactions/ui/layout/VerticalListLayout$1;-><init>(Lcom/amazon/startactions/ui/layout/VerticalListLayout;Landroid/widget/ScrollView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-object v1
.end method
