.class Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;
.super Ljava/lang/Object;
.source "DynamicButtonWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->success(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;->this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 285
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;->this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;->this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DynamicButtonOdotSucceeded"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 288
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;->this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->dynamic_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 289
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;->this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-virtual {v1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getView()Landroid/view/View;

    move-result-object v1

    sget v3, Lcom/amazon/kindle/ea/R$id;->dynamic_text_view:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 292
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;->this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    iget-object v3, v3, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v3, v3, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-boolean v3, v3, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->clickOnlyOnce:Z

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 295
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;->this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    iget-object v3, v3, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-static {v3, v0, v1}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;->access$100(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 298
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback$1;->this$1:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v0, v0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->featureKey:Ljava/lang/String;

    const-string/jumbo v1, "startactions.dynamicbutton.config"

    invoke-static {v1, v0, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
