.class Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech$1;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;
.source "StandaloneTextToSpeech.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech$1;->this$0:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityPaused()V
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech$1;->this$0:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->access$100(Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;)V

    :cond_0
    return-void
.end method

.method public onOverlayVisibilityChanged(Z)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech$1;->this$0:Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->access$000(Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;Z)V

    :cond_0
    return-void
.end method
