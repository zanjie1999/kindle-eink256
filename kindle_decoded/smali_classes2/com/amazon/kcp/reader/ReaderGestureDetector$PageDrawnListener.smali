.class Lcom/amazon/kcp/reader/ReaderGestureDetector$PageDrawnListener;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "ReaderGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageDrawnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;)V
    .locals 0

    .line 1670
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$PageDrawnListener;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;Lcom/amazon/kcp/reader/ReaderGestureDetector$1;)V
    .locals 0

    .line 1670
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector$PageDrawnListener;-><init>(Lcom/amazon/kcp/reader/ReaderGestureDetector;)V

    return-void
.end method


# virtual methods
.method public onCurrentPageDrawn()V
    .locals 2

    .line 1673
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderGestureDetector$PageDrawnListener;->this$0:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->access$302(Lcom/amazon/kcp/reader/ReaderGestureDetector;Z)Z

    return-void
.end method
