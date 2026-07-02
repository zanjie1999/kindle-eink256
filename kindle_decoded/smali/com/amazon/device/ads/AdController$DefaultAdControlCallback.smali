.class Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;
.super Ljava/lang/Object;
.source "AdController.java"

# interfaces
.implements Lcom/amazon/device/ads/AdControlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultAdControlCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/AdController;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/AdController;)V
    .locals 0

    .line 1913
    iput-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClosing()I
    .locals 2

    .line 1955
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback adClosing called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public isAdReady(Z)Z
    .locals 1

    .line 1918
    iget-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {p1}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "DefaultAdControlCallback isAdReady called"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 1919
    iget-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object p1

    sget-object v0, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object p1

    sget-object v0, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public onAdEvent(Lcom/amazon/device/ads/AdEvent;)V
    .locals 1

    .line 1949
    iget-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {p1}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "DefaultAdControlCallback onAdEvent called"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdExpired()V
    .locals 2

    .line 1962
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback onAdExpired called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .line 1943
    iget-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {p1}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "DefaultAdControlCallback onAdFailed called"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/amazon/device/ads/AdProperties;)V
    .locals 1

    .line 1925
    iget-object p1, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {p1}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    const-string v0, "DefaultAdControlCallback onAdLoaded called"

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onAdRendered()V
    .locals 2

    .line 1931
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback onAdRendered called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method

.method public postAdRendered()V
    .locals 2

    .line 1937
    iget-object v0, p0, Lcom/amazon/device/ads/AdController$DefaultAdControlCallback;->this$0:Lcom/amazon/device/ads/AdController;

    invoke-static {v0}, Lcom/amazon/device/ads/AdController;->access$200(Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    const-string v1, "DefaultAdControlCallback postAdRendered called"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method
