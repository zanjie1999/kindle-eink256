.class Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;
.super Ljava/lang/Object;
.source "AdapterModel.java"

# interfaces
.implements Lcom/amazon/startactions/ui/IAnyActionsUIController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/model/widget/AdapterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterAnyActionsUIController"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/amazon/ea/model/widget/AdapterModel;Landroid/app/Activity;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getFragmentManager()Landroid/app/FragmentManager;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getSessionMetric()Lcom/amazon/startactions/metrics/Metric;
    .locals 1

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getWidgetPlacements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;
    .locals 1

    .line 230
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 210
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public refreshUI()V
    .locals 1

    .line 220
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
