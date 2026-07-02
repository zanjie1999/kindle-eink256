.class public Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;
.super Lcom/amazon/ea/ui/layout/LayoutController;
.source "VerticalListWithPanelLayoutController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.layout.verticallistwithpanel.VerticalListWithPanelLayoutController"


# instance fields
.field private final bodyWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;"
        }
    .end annotation
.end field

.field private final endActionsActivity:Landroid/app/Activity;

.field private final panelWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazon/ea/model/layout/verticallistwithpanel/VerticalListWithPanelLayoutModel;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Lcom/amazon/ea/ui/layout/LayoutController;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->endActionsActivity:Landroid/app/Activity;

    .line 45
    iput-object p3, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->bodyWidgets:Ljava/util/List;

    .line 46
    iput-object p4, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->panelWidgets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getViewImplementation(Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 51
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->endactions_layout_vertical_list_with_panel:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_widget_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 56
    sget-object p1, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "main widget container is null"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 60
    :cond_0
    sget v3, Lcom/amazon/kindle/ea/R$id;->endactions_panel_widget_container:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    .line 62
    sget-object p1, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "panel widget container is null"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_1
    const/4 v4, 0x2

    .line 66
    iget-object v5, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 67
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FIXED_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 69
    :goto_0
    iget-object v5, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->panelWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/ea/ui/widget/WidgetController;

    if-nez v8, :cond_3

    .line 71
    iget-object v8, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v8}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    sget v10, Lcom/amazon/kindle/ea/R$layout;->endactions_list_divider:I

    invoke-virtual {v8, v10, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    :cond_3
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 75
    sget-object v8, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "inserting into panel widget of type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_4
    invoke-virtual {v9, v3, v4, v2, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v8, 0x0

    goto :goto_1

    .line 81
    :cond_5
    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_widget_scroller:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 82
    new-instance v3, Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v4, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v2}, Lcom/amazon/ea/ui/AnimationCoordinator;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 84
    iget-object v4, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/ea/ui/widget/WidgetController;

    if-nez v7, :cond_6

    .line 86
    iget-object v7, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    sget v8, Lcom/amazon/kindle/ea/R$layout;->endactions_list_divider:I

    invoke-virtual {v7, v8, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 89
    :cond_6
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 90
    sget-object v7, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "inserting into body widget of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    :cond_7
    sget-object v7, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    invoke-virtual {v5, v1, v7, v3, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v7, 0x0

    goto :goto_2

    .line 98
    :cond_8
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController$1;

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController$1;-><init>(Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 116
    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/ea/ui/widget/WidgetController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->panelWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 119
    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/ea/ui/widget/WidgetController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 136
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onDestroy()V

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->panelWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 139
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onDestroy()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 146
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onPause()V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->panelWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 149
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onPause()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 156
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onResume()V

    goto :goto_0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->panelWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 159
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onResume()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 126
    invoke-virtual {v1, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallistwithpanel/VerticalListWithPanelLayoutController;->panelWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 129
    invoke-virtual {v1, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    return-void
.end method
