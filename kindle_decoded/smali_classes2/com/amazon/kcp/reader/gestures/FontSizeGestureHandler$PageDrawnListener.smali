.class public Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler$PageDrawnListener;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "FontSizeGestureHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PageDrawnListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler$PageDrawnListener;->this$0:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrentPageDrawn()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler$PageDrawnListener;->this$0:Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;->access$002(Lcom/amazon/kcp/reader/gestures/FontSizeGestureHandler;Z)Z

    return-void
.end method
