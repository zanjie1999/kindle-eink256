.class Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;
.super Lcom/amazon/ea/ui/widget/WidgetController;
.source "AdapterModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/model/widget/AdapterModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterWidgetController"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/amazon/ea/model/widget/AdapterModel;

.field private final widget:Lcom/amazon/startactions/ui/widget/WidgetBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/ea/model/widget/AdapterModel;Landroid/app/Activity;Lcom/amazon/startactions/ui/widget/WidgetBase;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "TT;)V"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->this$0:Lcom/amazon/ea/model/widget/AdapterModel;

    invoke-direct {p0}, Lcom/amazon/ea/ui/widget/WidgetController;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->activity:Landroid/app/Activity;

    .line 126
    iput-object p3, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->widget:Lcom/amazon/startactions/ui/widget/WidgetBase;

    return-void
.end method


# virtual methods
.method public getView(Landroid/view/ViewGroup;Lcom/amazon/ea/model/widget/WidgetDisplayFormat;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 132
    new-instance v1, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;

    iget-object p2, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->this$0:Lcom/amazon/ea/model/widget/AdapterModel;

    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->activity:Landroid/app/Activity;

    invoke-direct {v1, p2, v0}, Lcom/amazon/ea/model/widget/AdapterModel$AdapterAnyActionsUIController;-><init>(Lcom/amazon/ea/model/widget/AdapterModel;Landroid/app/Activity;)V

    .line 133
    iget-object p2, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->widget:Lcom/amazon/startactions/ui/widget/WidgetBase;

    invoke-virtual {p2}, Lcom/amazon/startactions/ui/widget/WidgetBase;->initMetricsValues()V

    .line 134
    iget-object p2, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->widget:Lcom/amazon/startactions/ui/widget/WidgetBase;

    invoke-virtual {p2}, Lcom/amazon/startactions/ui/widget/WidgetBase;->loadData()V

    .line 135
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->widget:Lcom/amazon/startactions/ui/widget/WidgetBase;

    const/4 v3, 0x0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/startactions/ui/widget/WidgetBase;->bindToUi(Lcom/amazon/startactions/ui/IAnyActionsUIController;Landroid/view/ViewGroup;Ljava/lang/String;Lcom/amazon/ea/ui/AnimationCoordinator;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->widget:Lcom/amazon/startactions/ui/widget/WidgetBase;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/startactions/ui/widget/WidgetBase;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->widget:Lcom/amazon/startactions/ui/widget/WidgetBase;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->onUiDismiss()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/ea/model/widget/AdapterModel$AdapterWidgetController;->widget:Lcom/amazon/startactions/ui/widget/WidgetBase;

    invoke-virtual {v0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
