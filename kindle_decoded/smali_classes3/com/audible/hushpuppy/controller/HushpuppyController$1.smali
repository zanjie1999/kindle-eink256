.class Lcom/audible/hushpuppy/controller/HushpuppyController$1;
.super Ljava/lang/Object;
.source "HushpuppyController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/HushpuppyController;->doWhisperSyncUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/HushpuppyController;

.field final synthetic val$ebookPosition:I

.field final synthetic val$playerBook:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/HushpuppyController;ILcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController$1;->this$0:Lcom/audible/hushpuppy/controller/HushpuppyController;

    iput p2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController$1;->val$ebookPosition:I

    iput-object p3, p0, Lcom/audible/hushpuppy/controller/HushpuppyController$1;->val$playerBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 554
    invoke-static {}, Lcom/audible/hushpuppy/controller/HushpuppyController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Whispersyncing to ebook pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController$1;->val$ebookPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/HushpuppyController$1;->this$0:Lcom/audible/hushpuppy/controller/HushpuppyController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/HushpuppyController;->access$100(Lcom/audible/hushpuppy/controller/HushpuppyController;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getSyncManager()Lcom/amazon/kindle/krx/sync/ISyncManager;

    move-result-object v0

    iget-object v1, p0, Lcom/audible/hushpuppy/controller/HushpuppyController$1;->val$playerBook:Lcom/amazon/kindle/krx/content/IBook;

    iget v2, p0, Lcom/audible/hushpuppy/controller/HushpuppyController$1;->val$ebookPosition:I

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/sync/ISyncManager;->updateAndSyncLPR(Lcom/amazon/kindle/krx/content/IBook;I)Z

    return-void
.end method
