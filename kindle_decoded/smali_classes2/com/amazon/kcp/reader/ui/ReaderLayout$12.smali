.class Lcom/amazon/kcp/reader/ui/ReaderLayout$12;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeeker(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 3131
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$12;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 3134
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$12;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 3135
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$12;->this$0:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget p1, p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    const/4 p2, 0x4

    and-int/2addr p1, p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
