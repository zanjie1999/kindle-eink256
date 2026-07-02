.class Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;
.super Ljava/lang/Object;
.source "DynamicButtonWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;


# direct methods
.method private constructor <init>(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$1;)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;-><init>(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10

    .line 198
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v0, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v0, v0, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->dynamicButtonActionable:Lcom/amazon/ea/sidecar/def/data/DynamicButtonActionable;

    .line 200
    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getWidgetRefTagFactory()Lcom/amazon/ea/reftag/WidgetRefTagFactory;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    .line 201
    invoke-virtual {v1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getWidgetPlacementRefTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v2, v2, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v2, v2, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->refTagPartial:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/amazon/ea/reftag/WidgetRefTagFactory;->createRefTag(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/reftag/RefTag;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/ea/reftag/RefTag;->getRefTag()Ljava/lang/String;

    move-result-object v7

    .line 203
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    sget-object v1, Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;->CLICK_LEARN_MORE:Lcom/amazon/startactions/metrics/KindleUnlimitedOfferActions;

    invoke-static {p1, v1}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;->emit(Ljava/lang/String;Lcom/amazon/ea/metrics/WidgetActions;)V

    .line 205
    instance-of p1, v0, Lcom/amazon/ea/sidecar/def/data/URLActionData;

    const-string v1, "AnyActionsDynamicButtonWidget"

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 207
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v3, v3, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v4, "ClickedDynamicButtonURL"

    invoke-static {v4, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 209
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 210
    sget-object v3, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v3

    const-string v4, "ClickedDynamicUrl"

    invoke-interface {v3, v1, v4, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 214
    check-cast v0, Lcom/amazon/ea/sidecar/def/data/URLActionData;

    .line 217
    iget-object p1, v0, Lcom/amazon/ea/sidecar/def/data/URLActionData;->url:Ljava/lang/String;

    const-string v0, "%{refTag}"

    invoke-virtual {p1, v0, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance v0, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 224
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1, v0}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->startActivity(Landroid/content/Intent;)V

    .line 229
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ea/R$id;->dynamic_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 230
    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/ea/R$id;->dynamic_text_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 233
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v1, v1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-boolean v1, v1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->clickOnlyOnce:Z

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 236
    iget-object v1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-static {v1, p1, v0}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;->access$100(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;Landroid/widget/Button;Landroid/widget/TextView;)V

    .line 239
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object p1, p1, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;->featureKey:Ljava/lang/String;

    const-string/jumbo v0, "startactions.dynamicbutton.config"

    invoke-static {v0, p1, v2}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 242
    :cond_0
    instance-of p1, v0, Lcom/amazon/ea/sidecar/def/data/OdotActionData;

    if-eqz p1, :cond_2

    .line 244
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    iget-object v3, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    iget-object v3, v3, Lcom/amazon/startactions/ui/widget/WidgetBase;->def:Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;

    check-cast v3, Lcom/amazon/ea/sidecar/def/widgets/DynamicButtonWidgetDef;

    iget-object v3, v3, Lcom/amazon/ea/sidecar/def/widgets/WidgetDef;->metricsTag:Ljava/lang/String;

    const-string v4, "ClickedDynamicButtonOdot"

    invoke-static {v4, v3}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v2}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 246
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/widget/WidgetBase;->getReadingStreamsMetadataWithMetricsTag()Ljava/util/HashMap;

    move-result-object p1

    invoke-static {p1}, Lcom/google/common/collect/Maps;->newHashMap(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p1

    .line 247
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v2

    const-string v3, "ClickedDynamicOdot"

    invoke-interface {v2, v1, v3, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    check-cast v0, Lcom/amazon/ea/sidecar/def/data/OdotActionData;

    .line 252
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    if-nez p1, :cond_1

    .line 254
    sget-object p1, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;->TAG:Ljava/lang/String;

    const-string v0, "Current book null; cannot send ODOT."

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 259
    :cond_1
    new-instance v9, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;

    iget-object v2, v0, Lcom/amazon/ea/sidecar/def/data/OdotActionData;->endpoint:Ljava/lang/String;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 260
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/ea/util/BookUtil;->getFormattedContentType(Lcom/amazon/kindle/krx/content/ContentType;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v0, Lcom/amazon/ea/sidecar/def/data/OdotActionData;->additionalFields:Lorg/json/JSONObject;

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/amazon/startactions/messaging/StartActionsDynamicButtonWidgetJsonMessage;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance p1, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;

    iget-object v0, p0, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonClickListener;->this$0:Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$DynamicButtonOdotCallback;-><init>(Lcom/amazon/startactions/ui/widget/DynamicButtonWidget;Lcom/amazon/startactions/ui/widget/DynamicButtonWidget$1;)V

    .line 259
    invoke-static {v9, p1}, Lcom/amazon/ea/util/MessageSender;->send(Lcom/amazon/ea/messaging/IMessage;Lcom/amazon/ea/util/MessageSender$Callback;)V

    :cond_2
    :goto_0
    return-void
.end method
