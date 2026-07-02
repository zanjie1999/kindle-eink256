.class public Lcom/amazon/krf/media/MediaState;
.super Ljava/lang/Object;
.source "MediaState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/media/MediaState$PlaybackState;
    }
.end annotation


# static fields
.field private static final EXTRA_PLAYBACK_POSITION:Ljava/lang/String;

.field private static final EXTRA_PLAYBACK_STATE:Ljava/lang/String;


# instance fields
.field private final mMediaUriString:Ljava/lang/String;

.field private final mPlaybackPosition:I

.field private final mPlaybackState:Lcom/amazon/krf/media/MediaState$PlaybackState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    const-class v0, Lcom/amazon/krf/media/MediaState;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".playbackState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/krf/media/MediaState;->EXTRA_PLAYBACK_STATE:Ljava/lang/String;

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".playbackPosition"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/krf/media/MediaState;->EXTRA_PLAYBACK_POSITION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/krf/media/MediaState$PlaybackState;I)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/amazon/krf/media/MediaState;->mMediaUriString:Ljava/lang/String;

    .line 115
    iput-object p2, p0, Lcom/amazon/krf/media/MediaState;->mPlaybackState:Lcom/amazon/krf/media/MediaState$PlaybackState;

    .line 116
    iput p3, p0, Lcom/amazon/krf/media/MediaState;->mPlaybackPosition:I

    return-void
.end method

.method public static fromIntent(Landroid/content/Intent;)Lcom/amazon/krf/media/MediaState;
    .locals 4

    if-eqz p0, :cond_2

    .line 71
    invoke-virtual {p0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 75
    :cond_0
    sget-object v2, Lcom/amazon/krf/media/MediaState;->EXTRA_PLAYBACK_STATE:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/media/MediaState$PlaybackState;

    if-nez v2, :cond_1

    return-object v1

    .line 79
    :cond_1
    sget-object v1, Lcom/amazon/krf/media/MediaState;->EXTRA_PLAYBACK_POSITION:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    .line 80
    new-instance v1, Lcom/amazon/krf/media/MediaState;

    invoke-direct {v1, v0, v2, p0}, Lcom/amazon/krf/media/MediaState;-><init>(Ljava/lang/String;Lcom/amazon/krf/media/MediaState$PlaybackState;I)V

    return-object v1

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static populateIntent(Ljava/lang/String;Lcom/amazon/krf/media/MediaState$PlaybackState;ILandroid/content/Intent;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 98
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    sget-object p0, Lcom/amazon/krf/media/MediaState;->EXTRA_PLAYBACK_STATE:Ljava/lang/String;

    invoke-virtual {p3, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 103
    sget-object p0, Lcom/amazon/krf/media/MediaState;->EXTRA_PLAYBACK_POSITION:Ljava/lang/String;

    invoke-virtual {p3, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception p0

    .line 100
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 94
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public getMediaUriString()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/amazon/krf/media/MediaState;->mMediaUriString:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/amazon/krf/media/MediaState;->mPlaybackPosition:I

    return v0
.end method

.method public getPlaybackState()Lcom/amazon/krf/media/MediaState$PlaybackState;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/krf/media/MediaState;->mPlaybackState:Lcom/amazon/krf/media/MediaState$PlaybackState;

    return-object v0
.end method
