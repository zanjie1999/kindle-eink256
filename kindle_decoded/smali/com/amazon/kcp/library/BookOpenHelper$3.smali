.class final Lcom/amazon/kcp/library/BookOpenHelper$3;
.super Ljava/lang/Object;
.source "BookOpenHelper.java"

# interfaces
.implements Lcom/amazon/foundation/internal/IBooleanCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BookOpenHelper;->openBookOrSample(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field final synthetic val$libraryService:Lcom/amazon/kindle/content/ILibraryService;

.field final synthetic val$originator:Landroid/app/Activity;

.field final synthetic val$postFetchOfferRunnable:Ljava/lang/Runnable;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/content/ILibraryService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Landroid/app/Activity;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V
    .locals 0

    .line 327
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iput-object p2, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$postFetchOfferRunnable:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$originator:Landroid/app/Activity;

    iput-object p6, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Z)V
    .locals 4

    if-eqz p1, :cond_2

    .line 331
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$000()Ljava/lang/String;

    .line 333
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$libraryService:Lcom/amazon/kindle/content/ILibraryService;

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$asin:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$userId:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_1

    .line 337
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$postFetchOfferRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 339
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$000()Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$originator:Landroid/app/Activity;

    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenHelper$3;->val$downloadTrigger:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-static {v0, p1, v1}, Lcom/amazon/kcp/library/BookOpenHelper;->access$400(Landroid/app/Activity;Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)V

    .line 341
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$200()Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/application/DeeplinkEvent;

    sget-object v1, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->END_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/DeeplinkEvent;-><init>(Lcom/amazon/kcp/application/DeeplinkEvent$Type;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    goto :goto_1

    .line 344
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/library/BookOpenHelper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Pre-deeplink sync failed "

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
