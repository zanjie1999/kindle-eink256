.class public Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;
.super Ljava/lang/Object;
.source "AudioManagerWrapper.java"


# instance fields
.field private mInner:Landroid/media/AudioManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "audio"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioManager;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    return p1
.end method

.method public adjustStreamVolume(III)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return-void
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->adjustSuggestedStreamVolume(III)V

    return-void
.end method

.method public adjustVolume(II)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->adjustVolume(II)V

    return-void
.end method

.method public getMode()I
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    return v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getRingerMode()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method public getRouting(I)I
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getRouting(I)I

    move-result p1

    return p1
.end method

.method public getStreamMaxVolume(I)I
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result p1

    return p1
.end method

.method public getStreamVolume(I)I
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    return p1
.end method

.method public getVibrateSetting(I)I
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result p1

    return p1
.end method

.method public isBluetoothA2dpOn()Z
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoAvailableOffCall()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoAvailableOffCall()Z

    move-result v0

    return v0
.end method

.method public isBluetoothScoOn()Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v0

    return v0
.end method

.method public isMicrophoneMute()Z
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMicrophoneMute()Z

    move-result v0

    return v0
.end method

.method public isMusicActive()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method public isSpeakerphoneOn()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v0

    return v0
.end method

.method public isWiredHeadsetOn()Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public loadSoundEffects()V
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->loadSoundEffects()V

    return-void
.end method

.method public playSoundEffect(I)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    return-void
.end method

.method public playSoundEffect(IF)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    return-void
.end method

.method public registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method

.method public requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result p1

    return p1
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothA2dpOn(Z)V

    return-void
.end method

.method public setBluetoothScoOn(Z)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMicrophoneMute(Z)V

    return-void
.end method

.method public setMode(I)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setMode(I)V

    return-void
.end method

.method public setParameters(Ljava/lang/String;)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method public setRingerMode(I)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    return-void
.end method

.method public setRouting(III)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setRouting(III)V

    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setSpeakerphoneOn(Z)V

    return-void
.end method

.method public setStreamMute(IZ)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    return-void
.end method

.method public setStreamSolo(IZ)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setStreamSolo(IZ)V

    return-void
.end method

.method public setStreamVolume(III)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setVibrateSetting(II)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    return-void
.end method

.method public setWiredHeadsetOn(Z)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setWiredHeadsetOn(Z)V

    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result p1

    return p1
.end method

.method public startBluetoothSco()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->startBluetoothSco()V

    return-void
.end method

.method public stopBluetoothSco()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->stopBluetoothSco()V

    return-void
.end method

.method public unloadSoundEffects()V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->unloadSoundEffects()V

    return-void
.end method

.method public unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AudioManagerWrapper;->mInner:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    return-void
.end method
