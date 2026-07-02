.class Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;
.super Ljava/lang/Object;
.source "BookOpenAndCloseAnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;->this$1:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 310
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;->this$1:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$bookOpenIntentFuture:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/content/Intent;

    if-eqz v5, :cond_0

    const-string v0, "BookCloseAnimationId"

    .line 312
    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;->this$1:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;

    iget v1, v1, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$bookCloseAnimation:I

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;->this$1:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$200(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;->this$1:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$000(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;->this$1:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;

    iget-object v0, v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$100(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/app/Activity;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;->this$1:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;

    iget-object v4, v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$libraryDisplayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const/16 v6, 0x3039

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kcp/library/ILibraryController;->openItemByIntent(Lcom/amazon/kcp/reader/IReaderController;Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 318
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to open book due to execution"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 316
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to complete open book due to interruption"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
