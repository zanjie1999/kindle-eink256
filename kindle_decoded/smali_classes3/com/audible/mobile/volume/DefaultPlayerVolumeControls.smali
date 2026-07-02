.class public Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;
.super Ljava/lang/Object;
.source "DefaultPlayerVolumeControls.java"


# instance fields
.field private final audiobookPlayerStateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    iput-object p1, p0, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->audiobookPlayerStateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    return-void
.end method


# virtual methods
.method public decrementVolume()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->audiobookPlayerStateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getVolume()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    .line 73
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 74
    invoke-virtual {p0, v0}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->setVolume(F)Z

    return-void
.end method

.method public incrementVolume()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->audiobookPlayerStateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->getVolume()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    add-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 61
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->setVolume(F)Z

    return-void
.end method

.method public setVolume(F)Z
    .locals 7

    float-to-double v0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-ltz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "Volume should be greater than or equal to 0.0"

    .line 47
    invoke-static {v4, v5}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v0, v4

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "Volume should be less than or equal to 1.0"

    .line 48
    invoke-static {v2, v0}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/audible/mobile/volume/DefaultPlayerVolumeControls;->audiobookPlayerStateDelegate:Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/state/AudiobookPlayerStateDelegate;->setVolume(F)Z

    move-result p1

    return p1
.end method
