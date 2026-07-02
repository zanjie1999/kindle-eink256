.class public abstract Lcom/amazon/startactions/ui/layout/LayoutBase;
.super Ljava/lang/Object;
.source "LayoutBase.java"

# interfaces
.implements Lcom/amazon/startactions/ui/layout/Layout;


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.layout.LayoutBase"


# instance fields
.field private final metricsTag:Ljava/lang/String;

.field private final refTagSuffix:Ljava/lang/String;

.field protected view:Landroid/view/View;

.field protected widgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/widget/Widget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->metricsTag:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->refTagSuffix:Ljava/lang/String;

    return-void
.end method

.method protected static filterWidgetsForSlots(Ljava/util/List;Lcom/amazon/startactions/ui/layout/IWidgetProvider;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/amazon/startactions/ui/layout/IWidgetProvider;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/startactions/ui/widget/Widget;",
            ">;"
        }
    .end annotation

    .line 175
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/ea/guava/Lists;->newArrayListWithCapacity(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 176
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 177
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 178
    invoke-interface {p1, v2}, Lcom/amazon/startactions/ui/layout/IWidgetProvider;->getWidget(Ljava/lang/String;)Lcom/amazon/startactions/ui/widget/Widget;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 180
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 181
    sget-object v1, Lcom/amazon/startactions/ui/layout/LayoutBase;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding widget: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public createView(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->view:Landroid/view/View;

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/amazon/startactions/ui/layout/LayoutBase;->createViewImpl(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->view:Landroid/view/View;

    return-object p1

    .line 109
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Re-creating layouts is not supported. Somehow createView was called twice."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract createViewImpl(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/os/Bundle;)Landroid/view/View;
.end method

.method public getMetricsTag()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->metricsTag:Ljava/lang/String;

    return-object v0
.end method

.method public getRefTagSuffix()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->refTagSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getWidgetPlacements()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 81
    iget-object v1, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/startactions/ui/widget/Widget;

    if-nez v2, :cond_0

    .line 83
    sget-object v2, Lcom/amazon/startactions/ui/layout/LayoutBase;->TAG:Ljava/lang/String;

    const-string v3, "Widget found was null, cannot get widget Id"

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Lcom/amazon/startactions/ui/widget/Widget;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/amazon/startactions/ui/widget/Widget;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public loadData()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/ui/widget/Widget;

    .line 61
    invoke-interface {v1}, Lcom/amazon/startactions/ui/widget/Widget;->loadData()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/ui/widget/Widget;

    .line 132
    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/startactions/ui/widget/Widget;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReaderActivityPause()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/ui/widget/Widget;

    .line 153
    invoke-interface {v1}, Lcom/amazon/startactions/ui/widget/Widget;->onReaderActivityPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReaderActivityResume()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/ui/widget/Widget;

    .line 160
    invoke-interface {v1}, Lcom/amazon/startactions/ui/widget/Widget;->onReaderActivityResume()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUiDismiss()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/ui/widget/Widget;

    .line 146
    invoke-interface {v1}, Lcom/amazon/startactions/ui/widget/Widget;->onUiDismiss()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public prepareData()V
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/amazon/startactions/ui/layout/LayoutBase;->widgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/startactions/ui/widget/Widget;

    .line 68
    invoke-interface {v1}, Lcom/amazon/startactions/ui/widget/Widget;->prepareData()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public providesHeaderInfo()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
