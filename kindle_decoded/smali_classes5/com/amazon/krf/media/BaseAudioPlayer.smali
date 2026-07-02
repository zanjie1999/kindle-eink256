.class public abstract Lcom/amazon/krf/media/BaseAudioPlayer;
.super Ljava/lang/Object;
.source "BaseAudioPlayer.java"

# interfaces
.implements Lcom/amazon/krf/media/IMediaPlayer;


# static fields
.field public static final END_PLAYBACK_CALLBACK:I = 0x1

.field public static final FAIL_TO_DECODE:I = 0x2

.field public static final FAIL_TO_OPEN:I = 0x0

.field public static final FAIL_TO_PRELOAD:I = 0x1

.field public static final LOOP_PLAYBACK_CALLBACK:I = 0x2

.field public static final NOT_ENOUGH_RESOURCES:I = 0x3

.field public static final STATE_CHANGE_CALLBACK:I = 0x0

.field public static final UNKNOWN_ERROR:I = 0x4


# instance fields
.field private mNativeBridgeRef:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;)V
    .locals 0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected native notifyErrorToMediaListeners(IZ)V
.end method

.method protected native notifyMediaListeners(I)V
.end method

.method public removeOnStateChangedListener(Lcom/amazon/krf/media/IMediaPlayer$IOnStateChangedListener;)V
    .locals 0

    .line 44
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
