.class Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;
.super Ljava/lang/Object;
.source "AudibleSDK.java"

# interfaces
.implements Lcom/audible/sdk/AudibleSDK$PlaybackPosition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PlaybackPositionImpl"
.end annotation


# instance fields
.field private final playThroughFlag:I

.field private final playbackPosition:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput p1, p0, Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;->playbackPosition:I

    .line 641
    iput p2, p0, Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;->playThroughFlag:I

    return-void
.end method


# virtual methods
.method public getPlayThroughFlag()I
    .locals 1

    .line 646
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;->playThroughFlag:I

    return v0
.end method

.method public getPlaybackPosition()I
    .locals 1

    .line 651
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;->playbackPosition:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "playbackPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;->playbackPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 658
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " playThroughFlag="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$PlaybackPositionImpl;->playThroughFlag:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
