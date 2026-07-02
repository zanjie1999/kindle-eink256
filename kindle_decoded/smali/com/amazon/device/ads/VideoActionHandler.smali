.class Lcom/amazon/device/ads/VideoActionHandler;
.super Ljava/lang/Object;
.source "VideoActionHandler.java"

# interfaces
.implements Lcom/amazon/device/ads/AdActivity$AdActivityAdapter;


# instance fields
.field private activity:Landroid/app/Activity;

.field private layout:Landroid/widget/RelativeLayout;

.field private player:Lcom/amazon/device/ads/AdVideoPlayer;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/VideoActionHandler;)Landroid/app/Activity;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method private initPlayer(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    new-instance v0, Lcom/amazon/device/ads/AdVideoPlayer;

    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdVideoPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    const-string/jumbo v1, "url"

    .line 94
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdVideoPlayer;->setPlayData(Ljava/lang/String;)V

    .line 96
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 97
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 99
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdVideoPlayer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object p1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdVideoPlayer;->setViewGroup(Landroid/view/ViewGroup;)V

    .line 101
    iget-object p1, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-direct {p0, p1}, Lcom/amazon/device/ads/VideoActionHandler;->setPlayerListener(Lcom/amazon/device/ads/AdVideoPlayer;)V

    return-void
.end method

.method private setPlayerListener(Lcom/amazon/device/ads/AdVideoPlayer;)V
    .locals 1

    .line 75
    new-instance v0, Lcom/amazon/device/ads/VideoActionHandler$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/VideoActionHandler$1;-><init>(Lcom/amazon/device/ads/VideoActionHandler;)V

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdVideoPlayer;->setListener(Lcom/amazon/device/ads/AdVideoPlayer$AdVideoPlayerListener;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 60
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    .line 62
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    iget-object v1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/amazon/device/ads/VideoActionHandler;->layout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/VideoActionHandler;->initPlayer(Landroid/os/Bundle;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdVideoPlayer;->playVideo()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdVideoPlayer;->releasePlayer()V

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdVideoPlayer;->releasePlayer()V

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->player:Lcom/amazon/device/ads/AdVideoPlayer;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onWindowFocusChanged()V
    .locals 0

    return-void
.end method

.method public preOnCreate()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/amazon/device/ads/VideoActionHandler;->activity:Landroid/app/Activity;

    return-void
.end method
