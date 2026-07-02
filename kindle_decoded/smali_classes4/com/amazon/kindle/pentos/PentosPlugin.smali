.class public Lcom/amazon/kindle/pentos/PentosPlugin;
.super Ljava/lang/Object;
.source "PentosPlugin.java"

# interfaces
.implements Lcom/amazon/kindle/krx/plugin/IReaderPlugin;


# annotations
.annotation runtime Lcom/amazon/kindle/krx/plugin/Plugin;
    build = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Build;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Build;
    minApi = 0xe
    name = "PentosPlugin"
    role = .enum Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;->adult:Lcom/amazon/kindle/krx/plugin/Plugin$UserRole;
    target = .enum Lcom/amazon/kindle/krx/plugin/Plugin$Target;->both:Lcom/amazon/kindle/krx/plugin/Plugin$Target;
.end annotation


# static fields
.field private static final UPDATE_PAYMENT_PREFERENCES_KEY:Ljava/lang/String; = "UpdatePaymentPreferences"


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private setting:Lcom/amazon/kindle/krx/settings/ClickableSetting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isIndiaAccount()Z
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "amazon.in"

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method private registerComponents()V
    .locals 8

    .line 36
    new-instance v6, Lcom/amazon/kindle/pentos/listener/PaymentPreferencesListener;

    iget-object v0, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v6, v0}, Lcom/amazon/kindle/pentos/listener/PaymentPreferencesListener;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 37
    new-instance v7, Lcom/amazon/kindle/krx/settings/ClickableSetting;

    sget v2, Lcom/amazon/kindle/R$string;->one_click_category:I

    sget v3, Lcom/amazon/kindle/R$string;->one_click_title:I

    sget v4, Lcom/amazon/kindle/R$string;->one_click_subtitle:I

    const-string v1, "UpdatePaymentPreferences"

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/settings/ClickableSetting;-><init>(Ljava/lang/String;IIIZLcom/amazon/kindle/krx/settings/IClickListener;)V

    iput-object v7, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->setting:Lcom/amazon/kindle/krx/settings/ClickableSetting;

    .line 44
    invoke-direct {p0}, Lcom/amazon/kindle/pentos/PentosPlugin;->isIndiaAccount()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->setting:Lcom/amazon/kindle/krx/settings/ClickableSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setVisibility(Z)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSettingsControlManager()Lcom/amazon/kindle/krx/settings/ISettingsControlManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->setting:Lcom/amazon/kindle/krx/settings/ClickableSetting;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/settings/ISettingsControlManager;->registerSettingsControl(Lcom/amazon/kindle/krx/settings/ISettingsControl;)V

    return-void
.end method


# virtual methods
.method public getDependecies()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 27
    invoke-direct {p0}, Lcom/amazon/kindle/pentos/PentosPlugin;->registerComponents()V

    .line 28
    iget-object p1, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 57
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGIN:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    if-ne p1, v0, :cond_1

    .line 58
    invoke-direct {p0}, Lcom/amazon/kindle/pentos/PentosPlugin;->isIndiaAccount()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    iget-object p1, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->setting:Lcom/amazon/kindle/krx/settings/ClickableSetting;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setVisibility(Z)V

    goto :goto_0

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/pentos/PentosPlugin;->setting:Lcom/amazon/kindle/krx/settings/ClickableSetting;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setVisibility(Z)V

    :cond_1
    :goto_0
    return-void
.end method
