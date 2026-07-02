.class public Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;
.super Lcom/amazon/ea/ui/layout/LayoutController;
.source "VerticalListLayoutController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.ui.layout.verticallist.VerticalListLayoutController"


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

.field protected final endActionsActivity:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/amazon/ea/model/layout/verticallist/VerticalListLayoutModel;",
            "Ljava/util/List<",
            "Lcom/amazon/ea/ui/widget/WidgetController;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Lcom/amazon/ea/ui/layout/LayoutController;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->endActionsActivity:Landroid/app/Activity;

    .line 40
    iput-object p3, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->bodyWidgets:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getViewImplementation(Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 45
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$layout;->endactions_layout_vertical_list:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    sget v1, Lcom/amazon/kindle/ea/R$id;->endactions_widget_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-nez v1, :cond_0

    .line 49
    sget-object p1, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "main widget container is null"

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 53
    :cond_0
    sget v2, Lcom/amazon/kindle/ea/R$id;->endactions_widget_scroller:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ScrollView;

    .line 54
    new-instance v3, Lcom/amazon/ea/ui/AnimationCoordinator;

    iget-object v4, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-direct {v3, v4, v2}, Lcom/amazon/ea/ui/AnimationCoordinator;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const/4 v4, 0x1

    .line 57
    iget-object v5, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/ea/ui/widget/WidgetController;

    if-nez v4, :cond_1

    .line 59
    iget-object v4, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->endActionsActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    sget v7, Lcom/amazon/kindle/ea/R$layout;->endactions_list_divider:I

    invoke-virtual {v4, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    :cond_1
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 63
    sget-object v4, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "inserting widget of type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_2
    sget-object v4, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    invoke-virtual {v6, v1, v4, v3, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v4, 0x0

    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {v2}, Landroid/widget/ScrollView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v1, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController$1;

    invoke-direct {v1, p0, v2}, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController$1;-><init>(Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;Landroid/widget/ScrollView;)V

    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    return-object v0
.end method

.method protected logMetricOnScrollChanged()V
    .locals 1

    const-string v0, "AnyActionsVerticalListLayout"

    .line 84
    invoke-virtual {p0, v0}, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->logMetricOnScrollChanged(Ljava/lang/String;)V

    return-void
.end method

.method protected logMetricOnScrollChanged(Ljava/lang/String;)V
    .locals 2

    .line 88
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Scroll"

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 95
    invoke-virtual {v1, p1, p2, p3}, Lcom/amazon/ea/ui/widget/WidgetController;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 109
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onDestroy()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->bodyWidgets:Ljava/util/List;

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
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 123
    invoke-virtual {v1}, Lcom/amazon/ea/ui/widget/WidgetController;->onResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/ea/ui/layout/verticallist/VerticalListLayoutController;->bodyWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/ea/ui/widget/WidgetController;

    .line 102
    invoke-virtual {v1, p1}, Lcom/amazon/ea/ui/widget/WidgetController;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method
