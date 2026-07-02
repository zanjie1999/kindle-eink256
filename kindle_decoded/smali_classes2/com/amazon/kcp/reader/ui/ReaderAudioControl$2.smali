.class Lcom/amazon/kcp/reader/ui/ReaderAudioControl$2;
.super Ljava/lang/Object;
.source "ReaderAudioControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->attachToAudioPlayer(Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderAudioControl$2;->this$0:Lcom/amazon/kcp/reader/ui/ReaderAudioControl;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioControl;->access$100(Lcom/amazon/kcp/reader/ui/ReaderAudioControl;)Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderAudioPlayer;->requestStart()V

    return-void
.end method
