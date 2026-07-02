.class public final Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;
.super Ljava/lang/Object;
.source "StartActionsProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidgetProvider;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

.field private final context:Landroid/content/Context;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field protected paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

.field private testWidget:Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

.field protected upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

.field protected upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

.field protected upsellWidgetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/StartActionsWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected webViewWidgetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/audible/hushpuppy/view/startactions/UpsellWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iput-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 82
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    iput-object p2, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    .line 83
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->context:Landroid/content/Context;

    return-void
.end method

.method private logStartActionsUpsellDisplayed()V
    .locals 1

    .line 172
    new-instance v0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider$1;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider$1;-><init>(Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;
    .locals 4

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;->getName()Ljava/lang/String;

    move-result-object p1

    .line 116
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting widget name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    const-string v0, "audibleWidget"

    .line 117
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "non-approved widget state name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", upsell disabled"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object v1

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->NO_ACTION:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->upsellModel:Lcom/audible/hushpuppy/model/read/IUpsellModel;

    .line 123
    invoke-interface {p1}, Lcom/audible/hushpuppy/model/read/IUpsellModel;->getInputPerformed()Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;->START_ACTIONS:Lcom/audible/hushpuppy/model/read/IUpsellModel$InputPerformed;

    if-eq p1, v0, :cond_1

    .line 124
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "not upsold via Start Actions, upsell disabled"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    return-object v1

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/common/UpsellLogic;->getUpsellState()Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    move-result-object p1

    .line 131
    sget-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->UPSELL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    if-eq p1, v0, :cond_2

    .line 132
    sget-object v0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upsell Logic Upsell State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", upsell disabled."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object v1

    .line 137
    :cond_2
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->testWidget:Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    if-eqz p1, :cond_3

    .line 138
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "return test widget"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 139
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->testWidget:Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    return-object p1

    .line 142
    :cond_3
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 143
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "TOA enabled but no network, don\'t show audible section"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    return-object v1

    .line 147
    :cond_4
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    invoke-interface {p1}, Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;->shouldUsePaymentFlows()Z

    move-result p1

    if-nez p1, :cond_5

    .line 148
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Suppressing Upsell widgets because payment flows are disabled"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object v1

    .line 152
    :cond_5
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->audibleDebugHelper:Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p1, v0}, Lcom/audible/hushpuppy/common/debug/AudibleDebugHelper;->isToaEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 155
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "upsell enabled, return WebviewUpSellWidget"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 156
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->logStartActionsUpsellDisplayed()V

    .line 157
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->webViewWidgetProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    return-object p1

    .line 159
    :cond_6
    sget-object p1, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "upsell enabled, return StartActionsWidget"

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 160
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->logStartActionsUpsellDisplayed()V

    .line 161
    iget-object p1, p0, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->upsellWidgetProvider:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/startactions/StartActionsProvider;->get(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    move-result-object p1

    return-object p1
.end method
