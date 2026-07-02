.class Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1$1;
.super Ljava/lang/Object;
.source "FlashOverlaysEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;->onDocViewerAfterPositionChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;

.field final synthetic val$m_offset:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;I)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1$1;->this$1:Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;

    iput p2, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1$1;->val$m_offset:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 24
    iget v0, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1$1;->val$m_offset:I

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1$1;->this$1:Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;

    iget-object v0, v0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;->this$0:Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;->access$000(Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;)Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_0
    return-void
.end method
