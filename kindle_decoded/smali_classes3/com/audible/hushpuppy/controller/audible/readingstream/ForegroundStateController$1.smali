.class Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController$1;
.super Ljava/lang/Object;
.source "ForegroundStateController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->createApplicationForegroundedRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController$1;->this$0:Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 114
    invoke-static {}, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Call #applicationForeGrounded()"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController$1;->this$0:Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;->access$100(Lcom/audible/hushpuppy/controller/audible/readingstream/ForegroundStateController;)Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;->applicationForegrounded()V

    return-void
.end method
