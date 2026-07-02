.class final Lcom/audible/mobile/player/service/AudioManagerCompat;
.super Ljava/lang/Object;
.source "AudioManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;,
        Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplDefault;,
        Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final impl:Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/service/AudioManagerCompat;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/player/service/AudioManagerCompat;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "Context must not be null"

    .line 44
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    .line 46
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 44
    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/AudioManagerCompat;-><init>(Landroid/media/AudioManager;)V

    return-void
.end method

.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AudioManager must not be null"

    .line 56
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 58
    sget-object v0, Lcom/audible/mobile/player/service/AudioManagerCompat;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Creating AudioManagerCompat for pre-Oreo"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplDefault;

    invoke-direct {v0, p1}, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplDefault;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioManagerCompat;->impl:Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/audible/mobile/player/service/AudioManagerCompat;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Creating AudioManagerCompat for Oreo and later"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 62
    new-instance v0, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;

    invoke-direct {v0, p1}, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImplV26;-><init>(Landroid/media/AudioManager;)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioManagerCompat;->impl:Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;

    :goto_0
    return-void
.end method


# virtual methods
.method abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioManagerCompat;->impl:Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    return p1
.end method

.method requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioManagerCompat;->impl:Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;

    invoke-interface {v0, p1}, Lcom/audible/mobile/player/service/AudioManagerCompat$AudioManagerCompatImpl;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result p1

    return p1
.end method
