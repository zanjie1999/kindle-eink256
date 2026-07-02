.class Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer$3;
.super Ljava/lang/Object;
.source "ReaderAudioPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->onPlaybackError(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V
    .locals 0

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 284
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
