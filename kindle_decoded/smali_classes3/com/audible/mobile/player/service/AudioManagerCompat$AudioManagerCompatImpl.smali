.class interface abstract Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AudioManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AudioManagerCompatImpl"
.end annotation


# virtual methods
.method public abstract abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
.end method

.method public abstract requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
.end method
