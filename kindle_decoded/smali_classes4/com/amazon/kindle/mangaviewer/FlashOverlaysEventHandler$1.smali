.class Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "FlashOverlaysEventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;->this$0:Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocViewerAfterPositionChanged(I)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;->this$0:Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;

    invoke-static {v0}, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;->access$000(Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler;)Lcom/amazon/kcp/reader/ui/BookLayout;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1$1;-><init>(Lcom/amazon/kindle/mangaviewer/FlashOverlaysEventHandler$1;I)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
