.class final Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$stopDraggingWithDelay$1;
.super Ljava/lang/Object;
.source "ReaderFastNavigationView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->stopDraggingWithDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$stopDraggingWithDelay$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView$stopDraggingWithDelay$1;->this$0:Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;->access$setIsDragging(Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;Z)V

    return-void
.end method
