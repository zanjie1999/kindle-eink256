.class Lcom/amazon/overlay/translation/SpeakPlayer$1;
.super Ljava/lang/Object;
.source "SpeakPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/SpeakPlayer;-><init>(Landroid/content/Context;Lcom/amazon/overlay/translation/TranslationDialogUI;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/overlay/translation/SpeakPlayer;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/SpeakPlayer;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer$1;->this$0:Lcom/amazon/overlay/translation/SpeakPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer$1;->this$0:Lcom/amazon/overlay/translation/SpeakPlayer;

    invoke-static {p1}, Lcom/amazon/overlay/translation/SpeakPlayer;->access$100(Lcom/amazon/overlay/translation/SpeakPlayer;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/overlay/translation/SpeakPlayer$1;->this$0:Lcom/amazon/overlay/translation/SpeakPlayer;

    invoke-static {v0}, Lcom/amazon/overlay/translation/SpeakPlayer;->access$000(Lcom/amazon/overlay/translation/SpeakPlayer;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 87
    iget-object p1, p0, Lcom/amazon/overlay/translation/SpeakPlayer$1;->this$0:Lcom/amazon/overlay/translation/SpeakPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/overlay/translation/SpeakPlayer;->stop(Z)V

    :cond_0
    return-void
.end method
