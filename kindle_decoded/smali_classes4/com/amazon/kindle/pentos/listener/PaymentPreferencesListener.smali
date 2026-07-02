.class public Lcom/amazon/kindle/pentos/listener/PaymentPreferencesListener;
.super Ljava/lang/Object;
.source "PaymentPreferencesListener.java"

# interfaces
.implements Lcom/amazon/kindle/krx/settings/IClickListener;


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amazon/kindle/pentos/listener/PaymentPreferencesListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 4

    .line 19
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/amazon/kindle/pentos/listener/PaymentPreferencesListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/pentos/activity/PaymentPreferencesActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 21
    iget-object v2, p0, Lcom/amazon/kindle/pentos/listener/PaymentPreferencesListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DEVICE_TYPE"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v2, p0, Lcom/amazon/kindle/pentos/listener/PaymentPreferencesListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DOMAIN_NAME"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 29
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 30
    iget-object v1, p0, Lcom/amazon/kindle/pentos/listener/PaymentPreferencesListener;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
