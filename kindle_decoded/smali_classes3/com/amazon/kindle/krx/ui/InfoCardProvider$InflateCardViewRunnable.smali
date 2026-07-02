.class Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;
.super Ljava/lang/Object;
.source "InfoCardProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/ui/InfoCardProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InflateCardViewRunnable"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private final layoutId:I

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 46
    iput p2, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->layoutId:I

    .line 47
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 4

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 64
    :catch_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The inflation of an InfoCardView is interrupted, layout id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->layoutId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->view:Landroid/view/View;

    return-object v0
.end method

.method public run()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget v1, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->layoutId:I

    invoke-static {v0, v1}, Lcom/amazon/kindle/krx/ui/InfoCardProvider;->access$100(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->view:Landroid/view/View;

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/InfoCardProvider$InflateCardViewRunnable;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
