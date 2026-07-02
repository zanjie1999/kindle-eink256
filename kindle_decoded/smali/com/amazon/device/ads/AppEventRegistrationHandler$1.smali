.class Lcom/amazon/device/ads/AppEventRegistrationHandler$1;
.super Ljava/lang/Object;
.source "AppEventRegistrationHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AppEventRegistrationHandler;->addEventToAppEventsCacheFile(Lcom/amazon/device/ads/AppEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AppEventRegistrationHandler;

.field final synthetic val$appEvent:Lcom/amazon/device/ads/AppEvent;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AppEventRegistrationHandler;Lcom/amazon/device/ads/AppEvent;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;->this$0:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    iput-object p2, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;->val$appEvent:Lcom/amazon/device/ads/AppEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;->this$0:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    iget-object v1, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;->val$appEvent:Lcom/amazon/device/ads/AppEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->appendAppEventToFile(Lcom/amazon/device/ads/AppEvent;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;->val$appEvent:Lcom/amazon/device/ads/AppEvent;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AppEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INSTALL_REFERRER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;->this$0:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    .line 90
    invoke-static {v0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->access$000(Lcom/amazon/device/ads/AppEventRegistrationHandler;)Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getRegistrationInfo()Lcom/amazon/device/ads/RegistrationInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/RegistrationInfo;->isRegisteredWithSIS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/device/ads/AppEventRegistrationHandler$1;->this$0:Lcom/amazon/device/ads/AppEventRegistrationHandler;

    invoke-static {v0}, Lcom/amazon/device/ads/AppEventRegistrationHandler;->access$000(Lcom/amazon/device/ads/AppEventRegistrationHandler;)Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getSISRegistration()Lcom/amazon/device/ads/SISRegistration;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRegistration;->registerEvents()V

    :cond_0
    return-void
.end method
