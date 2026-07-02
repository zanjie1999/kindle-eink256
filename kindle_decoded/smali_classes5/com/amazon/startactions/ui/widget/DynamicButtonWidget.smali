.class public Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;
.super Lcom/amazon/startactions/ui/widget/WidgetBase;
.source "DynamicButtonWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;,
        Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/startactions/ui/widget/WidgetBase<",
        "Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;",
        ">;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.startactions.ui.widget.DynamicButtonWidget"

.field private static final TEXT_TAG_REF_TAG:Ljava/lang/String; = "%{refTag}"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;-><init>(Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;->configureOnActionText(Landroid/widget/Button;Landroid/widget/TextView;)V

    return-void
.end method

.method private configureOnActionText(Landroid/widget/Button;Landroid/widget/TextView;)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->buttonTextOnAction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->buttonTextOnAction:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 184
    :cond_0
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->textOnAction:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->textOnAction:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 186
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    sget p1, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public static tryCreate(Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;)Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;
    .locals 2

    .line 67
    iget-boolean v0, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->displayIfClicked:Z

    if-nez v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->featureKey:Ljava/lang/String;

    const-string/jumbo v1, "startactions.dynamicbutton.config"

    invoke-static {v1, v0}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 74
    sget-object p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;->TAG:Ljava/lang/String;

    const-string v0, "Button already clicked and not supposed to be shown again, invalidating."

    invoke-static {p0, v0}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 80
    :cond_1
    new-instance v0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-direct {v0, p0}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;-><init>(Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;)V

    return-object v0
.end method


# virtual methods
.method protected createView(Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 92
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/ea/R$layout;->startactions_widget_dynamic_button:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 95
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->widgetTitle:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 96
    sget p2, Lcom/amazon/kindle/ea/R$id;->startactions_widget_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->widgetTitle:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 99
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 103
    :cond_0
    sget p2, Lcom/amazon/kindle/ea/R$id;->dynamic_text_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->text:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    sget v0, Lcom/amazon/kindle/ea/R$array;->startactions_text_primary_color:I

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 107
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    :cond_1
    sget v0, Lcom/amazon/kindle/ea/R$id;->dynamic_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 112
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonData:Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/data/DynamicButtonData;->buttonText:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 113
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button:I

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/ea/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 114
    sget v2, Lcom/amazon/kindle/ea/R$array;->startactions_secondary_button_text_color:I

    .line 115
    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/ThemedResourceUtil;->getThemedColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 114
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 116
    new-instance v2, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;-><init>(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v3, v2

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-boolean v3, v3, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->clickOnlyOnce:Z

    if-eqz v3, :cond_3

    .line 120
    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->featureKey:Ljava/lang/String;

    const-string/jumbo v3, "startactions.dynamicbutton.config"

    invoke-static {v3, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 124
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 125
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    sget-object v2, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;->TAG:Ljava/lang/String;

    const-string v3, "Button already clicked. Disabling it as it is supposed to be clicked only once."

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v2}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v4, "DynamicButtonDisabled"

    invoke-static {v4, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    invoke-direct {p0, v0, p2}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;->configureOnActionText(Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 137
    :cond_3
    iget-object p2, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object p2, p2, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v0, Lcom/amazon/ea/metrics/GeneralWidgetActions;->RENDER:Lcom/amazon/ea/metrics/GeneralWidgetActions;

    invoke-static {p2, v0}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 139
    new-instance p2, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$1;

    invoke-direct {p2, p0}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$1;-><init>(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public initMetricsValues()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object v0

    const-string v1, "DisplayedDynamicButton"

    .line 154
    invoke-static {v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 155
    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 157
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DynamicButtonDisabled"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    move-object v2, v1

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonActionable:Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;

    instance-of v2, v2, Lcom/amazon/ea/sidecar/def/data/OdotActionData;

    if-eqz v2, :cond_0

    .line 161
    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "DynamicButtonOdotSucceeded"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ClickedDynamicButtonOdot"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_0
    move-object v2, v1

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonActionable:Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;

    instance-of v2, v2, Lcom/amazon/ea/sidecar/def/data/URLActionData;

    if-eqz v2, :cond_1

    .line 164
    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v1, v1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v2, "ClickedDynamicButtonURL"

    invoke-static {v2, v1}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/metrics/Metric;->initFlag(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const-string v0, "DisplayedDynamicButtonWidget"

    .line 167
    invoke-static {v0, p0}, Lcom/amazon/ea/readingstreams/ReadingStreamsDisplayedWidgetsHelper;->displayedWidgetSA(Ljava/lang/String;Lcom/amazon/startactions/ui/widget/Widget;)V

    return-void
.end method
