.class Lcom/amazon/kindle/rendering/KRIFLayout$5;
.super Ljava/lang/Object;
.source "KRIFLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFLayout;->onKRXExternalScreenEvent(Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFLayout;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFLayout$5;->this$0:Lcom/amazon/kindle/rendering/KRIFLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFLayout$5;->this$0:Lcom/amazon/kindle/rendering/KRIFLayout;

    invoke-static {v0}, Lcom/amazon/kindle/rendering/KRIFLayout;->access$000(Lcom/amazon/kindle/rendering/KRIFLayout;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFLayout$5;->this$0:Lcom/amazon/kindle/rendering/KRIFLayout;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFLayout$5;->this$0:Lcom/amazon/kindle/rendering/KRIFLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->refresh()V

    :goto_0
    return-void
.end method
