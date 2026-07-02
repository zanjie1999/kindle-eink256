.class Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;
.super Lcom/amazon/kindle/home/card/AbstractHomeCard;
.source "StoreUpsellWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreUpsellWidget"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-direct {p0}, Lcom/amazon/kindle/home/card/AbstractHomeCard;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$1;)V
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;-><init>(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)V

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Lcom/amazon/kindle/home/action/HomeActionManager;)V
    .locals 0

    .line 182
    iget-object p2, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-static {p2, p1}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->access$300(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;Landroid/view/View;)V

    return-void
.end method

.method public getPriority()I
    .locals 1

    const v0, 0x7fffffff

    return v0
.end method

.method public getState()Lcom/amazon/kindle/home/card/HomeCardState;
    .locals 1

    .line 221
    sget-object v0, Lcom/amazon/kindle/home/card/HomeCardState;->READY:Lcom/amazon/kindle/home/card/HomeCardState;

    return-object v0
.end method

.method public getViewLayoutId()I
    .locals 1

    .line 187
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->store_upsell_widget:I

    return v0
.end method

.method public reportImpressionData(Z)V
    .locals 4

    .line 197
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 199
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "HomeStoreUpsellWidget"

    if-nez p1, :cond_0

    .line 201
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->access$100(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider$StoreUpsellWidget;->this$0:Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->access$100(Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 203
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    .line 204
    invoke-static {}, Lcom/amazon/kcp/home/widget/storeupsell/StoreUpsellWidgetProvider;->access$400()Ljava/lang/String;

    .line 208
    :cond_1
    :goto_0
    const-class p1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {p1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "home_impressions_v4_android"

    .line 210
    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string/jumbo v2, "reftag"

    const-string/jumbo v3, "sk-store-upsell"

    .line 211
    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v1

    const-string/jumbo v2, "widget_position"

    .line 212
    invoke-interface {v1, v2, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v0

    .line 215
    invoke-interface {p1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "StoreUpsell"

    return-object v0
.end method
