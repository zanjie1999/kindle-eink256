.class Lcom/amazon/kcp/reader/ReaderActivity$17;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 1875
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$17;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1880
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceContext()Lcom/amazon/kcp/application/IDeviceContext;

    move-result-object v0

    .line 1881
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$17;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IDeviceContext;->stopListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V

    return-void
.end method
