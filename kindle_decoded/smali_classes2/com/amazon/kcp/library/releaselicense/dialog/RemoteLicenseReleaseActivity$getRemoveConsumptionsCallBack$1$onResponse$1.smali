.class final Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRemoteLicenseReleaseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteLicenseReleaseActivity.kt\ncom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,709:1\n1#2:710\n1819#3,2:711\n*E\n*S KotlinDebug\n*F\n+ 1 RemoteLicenseReleaseActivity.kt\ncom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1\n*L\n560#1,2:711\n*E\n"
.end annotation


# instance fields
.field final synthetic $latency:J

.field final synthetic this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iput-wide p2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->$latency:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 549
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$timer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 550
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$removeProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 551
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cancelling download for bookId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " on remove consumptions response succeeded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v1, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$libraryController:Lcom/amazon/kcp/library/ILibraryController;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/amazon/kcp/library/ILibraryController;->cancelDownload(Ljava/lang/String;)V

    .line 553
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;

    const-string v1, "RemoteLicenseRelease"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$LIBRARY;-><init>(Ljava/lang/String;)V

    .line 554
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v4, v4, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v4}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getAsin$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " error state cleared"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-boolean v3, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$isOneTapEnabled:Z

    const-string v4, "RemoveAndReadNow success response with One-Tap Enabled: "

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$isRLRActivityForegrounded$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 556
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->rlr_book_cover:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/ui/BookCoverView;

    .line 557
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v2, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    iget-object v3, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$manager:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;

    if-eqz v3, :cond_0

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-interface {v3, v2, v0, v5, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;->open(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    .line 558
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-boolean v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$isOneTapEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " for book "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$isStoreOrSearch$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 560
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v1, v1, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v1}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getFactory$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 711
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/content/ContentMetadata;

    .line 561
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$libraryController:Lcom/amazon/kcp/library/ILibraryController;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v4

    const-string v5, "it.bookID"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 562
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v4, v3, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v6

    .line 563
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTodoTypeFromBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/application/models/internal/TodoItem$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 562
    invoke-static/range {v4 .. v9}, Lcom/amazon/kcp/library/TransientActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "TransientActivity.newInt\u2026toString(), false, false)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 564
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v3, v3, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 565
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoveAndReadNow success response for Store or Search for book "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v4, v4, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 568
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v2, v1, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$libraryController:Lcom/amazon/kcp/library/ILibraryController;

    iget-object v1, v1, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$bookId:Ljava/lang/String;

    invoke-interface {v2, v1, v5, v0}, Lcom/amazon/kcp/library/ILibraryController;->checkForErrorAndDownloadBook(Ljava/lang/String;Landroid/view/View;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    .line 569
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getTAG$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-boolean v2, v2, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$isOneTapEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :cond_3
    :goto_1
    sget-object v2, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;->REMOVE_CONSUMPTIONS:Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;

    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getAsin$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;->access$getContentType$p(Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;)Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v6

    iget-wide v7, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->$latency:J

    .line 571
    invoke-static/range {v2 .. v8}, Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics;->reportServiceResponseMetrics(Lcom/amazon/kcp/util/fastmetrics/RecordRemoteLicenseReleaseMetrics$RemoteLicenseReleaseOperationType;ZILjava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;J)V

    .line 573
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->$activity:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 574
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1$onResponse$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;

    iget-object v0, v0, Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity$getRemoveConsumptionsCallBack$1;->this$0:Lcom/amazon/kcp/library/releaselicense/dialog/RemoteLicenseReleaseActivity;

    sget v1, Lcom/amazon/kindle/krl/R$anim;->no_anim:I

    invoke-virtual {v0, v1, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method
