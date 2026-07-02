.class Lcom/audible/mobile/player/service/AudioFocus$1;
.super Ljava/lang/Object;
.source "AudioFocus.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/service/AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/player/service/AudioFocus;


# direct methods
.method constructor <init>(Lcom/audible/mobile/player/service/AudioFocus;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus$1;->this$0:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus$1;->this$0:Lcom/audible/mobile/player/service/AudioFocus;

    invoke-virtual {v0, p1}, Lcom/audible/mobile/player/service/AudioFocus;->onAudioFocusChange(I)V

    return-void
.end method
