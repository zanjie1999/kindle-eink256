.class Lcom/amazon/kcp/reader/ReaderActivity$32;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onActivityFocusChanged(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic val$hasFocus:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;Z)V
    .locals 0

    .line 5089
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$32;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ReaderActivity$32;->val$hasFocus:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 5092
    iget-object v0, p0, Lcom/amazon/kcp/reader/ReaderActivity$32;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ReaderActivity;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    .line 5094
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amazon/kcp/reader/ReaderActivity$32;->val$hasFocus:Z

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->onWindowFocusChanged(ZLcom/amazon/kcp/reader/ui/ReaderLayout;)V

    :cond_0
    return-void
.end method
