.class Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$1;
.super Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;
.source "StandaloneReaderLayoutCustomizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;->onCreate(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;

.field final synthetic val$readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$1;->this$0:Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;

    iput-object p2, p0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$1;->val$readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocViewerInitialDraw()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$1;->this$0:Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;

    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->getCurrentReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$1;->val$readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer;->onReaderModeChanged(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 36
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandaloneReaderLayoutCustomizer$1;->val$readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    return-void
.end method
