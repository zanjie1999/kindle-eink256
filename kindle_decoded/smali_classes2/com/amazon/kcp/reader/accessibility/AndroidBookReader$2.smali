.class Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$2;
.super Ljava/lang/Object;
.source "AndroidBookReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->onPageFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$2;->this$0:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$2;->this$0:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->access$100(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$2;->this$0:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->access$200(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/contentprovider/TtsBookBridge;->goToNextPage()V

    return-void
.end method
