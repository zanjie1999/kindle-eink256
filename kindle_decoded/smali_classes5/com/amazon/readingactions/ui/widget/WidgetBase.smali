.class public abstract Lcom/amazon/readingactions/ui/widget/WidgetBase;
.super Ljava/lang/Object;
.source "WidgetBase.java"

# interfaces
.implements Lcom/amazon/startactions/ui/widget/Widget;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/startactions/ui/widget/Widget;"
    }
.end annotation


# instance fields
.field protected animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

.field protected controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

.field protected final def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected resources:Landroid/content/res/Resources;

.field private view:Landroid/view/View;

.field private widgetPlacementRefTag:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    return-void
.end method

.method public static setOrientationListener(Landroid/content/Context;Landroid/view/View;)V
    .locals 9

    if-eqz p0, :cond_1

    .line 209
    new-instance v8, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;-><init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 210
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 211
    :goto_0
    invoke-virtual {v8, p1}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;->setWidth(Z)V

    .line 212
    invoke-virtual {v8}, Landroid/view/OrientationEventListener;->enable()V

    :cond_1
    return-void
.end method


# virtual methods
.method public bindToUi(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 150
    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->widgetPlacementRefTag:Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    .line 152
    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iput-object p3, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->resources:Landroid/content/res/Resources;

    .line 153
    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getContext()Landroid/content/Context;

    .line 154
    iput-object p4, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->animationCoordinator:Lcom/amazon/ea/ui/AnimationCoordinator;

    .line 157
    invoke-virtual {p0, p2, p5}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->view:Landroid/view/View;

    .line 160
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/widget/WidgetBase;->initMetricsValues()V

    .line 162
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->view:Landroid/view/View;

    return-object p1

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Re-binding widgets is not supported. Somehow this method has been called twice."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricsTag()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    return-object v0
.end method

.method protected getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 132
    invoke-static {v0}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "MetricsTag"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getView()Landroid/view/View;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->view:Landroid/view/View;

    return-object v0
.end method

.method public getWidgetPlacementRefTag()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->widgetPlacementRefTag:Ljava/lang/String;

    return-object v0
.end method

.method public abstract initMetricsValues()V
.end method

.method public loadData()V
    .locals 0

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onReaderActivityPause()V
    .locals 0

    return-void
.end method

.method public onReaderActivityResume()V
    .locals 0

    return-void
.end method

.method public onUiDismiss()V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget v0, v0, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayLimit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 90
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "anyactions.displayed.widgets"

    .line 91
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v4, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget-object v4, v4, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    .line 92
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_0

    .line 95
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 96
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 100
    :cond_0
    sget-object v1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 101
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 102
    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 103
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->displayKey:Ljava/lang/String;

    add-int/2addr v0, v4

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareData()V
    .locals 0

    return-void
.end method
