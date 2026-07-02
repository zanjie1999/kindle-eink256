.class Lcom/amazon/kindle/krx/reader/ReaderManager$1;
.super Ljava/lang/Object;
.source "ReaderManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/reader/ReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/reader/ReaderManager;

.field final synthetic val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/ReaderManager;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->this$0:Lcom/amazon/kindle/krx/reader/ReaderManager;

    iput-object p2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 407
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 406
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ReaderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on sending book close event to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 395
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 394
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 399
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ReaderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on sending book open event to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 420
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 424
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ReaderManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error on sending book post-navigation event to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 433
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onBeforeNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 437
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ReaderManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error on sending book pre-navigation event to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 446
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 445
    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 448
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onNavigationFailed(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 450
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ReaderManager;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error on sending book navigation failed event to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPageChange(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    instance-of v1, v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    if-eqz v1, :cond_0

    .line 486
    :try_start_0
    check-cast v0, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListenerV2;->onPageChange(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 488
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ReaderManager;->access$000()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :cond_0
    :goto_0
    return-void
.end method

.method public onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 473
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 475
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;->onPageFlowChanged(Lcom/amazon/kindle/krx/content/IBook;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 477
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ReaderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on sending page-flow changed event to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    .locals 3

    .line 459
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;->getContent()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 460
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    instance-of v0, v0, Lcom/amazon/kindle/krx/reader/IPageNavigationAbortedListener;

    if-eqz v0, :cond_0

    .line 463
    iget-object v0, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    check-cast v0, Lcom/amazon/kindle/krx/reader/IPageNavigationAbortedListener;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/reader/IPageNavigationAbortedListener;->onPageTurnAborted(Lcom/amazon/kindle/krx/reader/IPageTurnAbortedEventData;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 466
    invoke-static {}, Lcom/amazon/kindle/krx/reader/ReaderManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error on sending page-turn aborted event to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/reader/ReaderManager$1;->val$listener:Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
