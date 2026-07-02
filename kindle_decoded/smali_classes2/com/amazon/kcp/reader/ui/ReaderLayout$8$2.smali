.class Lcom/amazon/kcp/reader/ui/ReaderLayout$8$2;
.super Ljava/lang/Object;
.source "ReaderLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderLayout$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout$8;)V
    .locals 0

    .line 1961
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout$8$2;->this$1:Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1964
    invoke-static {}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->access$300()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/tutorial/BookOpenAccessibilityReadyEvent;

    invoke-direct {v1}, Lcom/amazon/kindle/tutorial/BookOpenAccessibilityReadyEvent;-><init>()V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
