.class public final Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;
.super Ljava/lang/Object;
.source "KindleBookOpenManager.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenManager;
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenTracker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKindleBookOpenManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KindleBookOpenManager.kt\ncom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,286:1\n13506#2,2:287\n1#3:289\n*E\n*S KotlinDebug\n*F\n+ 1 KindleBookOpenManager.kt\ncom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager\n*L\n145#1,2:287\n*E\n"
.end annotation


# instance fields
.field private currentLifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

.field private executingActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

.field private fetchCoverFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->IDLE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    return-void
.end method

.method private final fetchMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 3

    .line 182
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    const-string v2, "Utils.getFactory().libraryService"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic getCurrentLifecycle$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getExecutingActivity$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getStatus$krxsdk_release$annotations()V
    .locals 0

    return-void
.end method

.method private final openNextBook()V
    .locals 13

    const-string v0, "Utils.getFactory()"

    .line 190
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->currentLifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v1, :cond_3

    .line 192
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getSourceActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpeningBookId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x40000000    # 2.0f

    .line 194
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Opening next book in queue with bookId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getView()Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 199
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getSourceActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    .line 200
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getView()Landroid/view/View;

    move-result-object v5

    const-string v6, "splash_screen_transition"

    invoke-virtual {v5, v6}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    .line 203
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getSourceActivity()Landroid/app/Activity;

    move-result-object v5

    .line 202
    invoke-static {v5, v3, v6}, Landroid/app/ActivityOptions;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/app/ActivityOptions;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    .line 210
    :goto_0
    sget-object v5, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->OPEN_ANIMATION:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v5}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v5

    .line 211
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v6

    const-string v7, "asin"

    invoke-virtual {v5, v7, v6}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 212
    invoke-virtual {v5}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 216
    iget-object v5, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->fetchCoverFuture:Ljava/util/concurrent/Future;

    if-eqz v5, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 218
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0xfa0

    .line 219
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v10, v11, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 221
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Book open manager waited "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v10, v8

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "ms for cover fetching."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v5

    const-string v8, "oneTapCoverAwaitComplete"

    .line 223
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v9

    invoke-interface {v9}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v9

    new-array v10, v7, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 224
    sget-object v11, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v11, v10, v6

    .line 222
    invoke-virtual {v5, v8, v9, v10}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 227
    :catch_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v0

    const-string v5, "oneTapCoverAwaitTimeout"

    .line 228
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v8

    invoke-interface {v8}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parse(Ljava/lang/String;)Lcom/amazon/kcp/library/models/internal/AmznBookID;

    move-result-object v8

    new-array v7, v7, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 229
    sget-object v9, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v9, v7, v6

    .line 227
    invoke-virtual {v0, v5, v8, v7}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 230
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :goto_1
    iput-object v4, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->fetchCoverFuture:Ljava/util/concurrent/Future;

    goto :goto_3

    :goto_2
    iput-object v4, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->fetchCoverFuture:Ljava/util/concurrent/Future;

    throw v0

    .line 237
    :cond_1
    :goto_3
    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getSourceActivity()Landroid/app/Activity;

    move-result-object v0

    const/16 v1, 0x3039

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    :cond_2
    invoke-virtual {v0, v2, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_4

    .line 239
    :cond_3
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    :goto_4
    return-void
.end method


# virtual methods
.method public bookOpenCompleted(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 4

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->currentLifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_2

    .line 267
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->currentLifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    .line 269
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->executingActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    .line 275
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    monitor-enter p1

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    sget-object v1, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->RUNNING:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    if-eq v0, v1, :cond_0

    .line 277
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completion call received by manager with status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->IDLE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    iput-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    .line 280
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0

    .line 271
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completion call for book: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t match currently opened book: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 282
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untracked open completion for book: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final getCurrentLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->currentLifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    return-object v0
.end method

.method public final getExecutingActivity$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->executingActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    return-object v0
.end method

.method public final getStatus$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    return-object v0
.end method

.method public final open(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Ljava/lang/Integer;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v4, p5

    const-string v2, "contentMetadata"

    move-object/from16 v3, p1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "source"

    move-object/from16 v5, p2

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "clientId"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "pattern"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 91
    iget-object v2, v1, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    monitor-enter v2

    .line 92
    :try_start_0
    iget-object v6, v1, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    sget-object v7, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->IDLE:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    if-eq v6, v7, :cond_0

    .line 93
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to start book open process for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v4, "while open process is currently: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v4, v1, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 93
    invoke-static {v0, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v2

    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    const-string v7, "Utils.getFactory()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v6

    invoke-interface {v6, v12}, Lcom/amazon/kcp/library/ILibraryController;->failureDetailsForBook(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 101
    invoke-interface/range {p5 .. p5}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;->getFailureHandler()Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler;-><init>()V

    .line 102
    :goto_0
    sget-object v3, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->ENTRY_POINT:Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-object/from16 v7, p3

    invoke-interface {v0, v12, v3, v6, v7}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;->handleFailure(Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;Landroid/view/View;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    monitor-exit v2

    return-void

    :cond_2
    move-object/from16 v7, p3

    .line 105
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v6

    const-string v8, "contentMetadata.state"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v6

    const/4 v8, 0x0

    if-nez v6, :cond_3

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v6

    const-string v9, "Utils.getFactory()"

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v6

    invoke-interface {v6}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v6

    if-nez v6, :cond_3

    .line 106
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v3, "ConnectionError"

    invoke-interface {v0, v3, v8}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    monitor-exit v2

    return-void

    .line 110
    :cond_3
    :try_start_3
    sget-object v6, Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;->RUNNING:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    iput-object v6, v1, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    .line 111
    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    monitor-exit v2

    .line 113
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v6, "Utils.getFactory()"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    if-nez v2, :cond_4

    .line 115
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v0

    const-string v2, "reader SDK is null, cannot open book"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 118
    :cond_4
    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v2

    invoke-interface {v2, v12}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContent(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v6

    .line 119
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v9, "Utils.getFactory()"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/reader/IReaderController;->currentBookInfo()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object v10

    .line 120
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v9, "Utils.getFactory()"

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object v2

    .line 121
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v9

    if-eqz v9, :cond_5

    goto :goto_1

    :cond_5
    sget-object v9, Lcom/amazon/kindle/model/content/ContentState;->UNKNOWN:Lcom/amazon/kindle/model/content/ContentState;

    .line 122
    :goto_1
    invoke-virtual {v9}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v11

    const/4 v14, 0x0

    const/4 v15, 0x1

    if-eqz v11, :cond_6

    .line 124
    sget-object v11, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-static {v11}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->createStartEvent(Lcom/amazon/kindle/performance/KindlePerformanceConstants;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    move-result-object v11

    const-string v8, "book"

    .line 125
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v8

    const-string v13, "asin"

    invoke-virtual {v11, v13, v8}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/performance/PerformanceEventBuilder;

    .line 126
    invoke-virtual {v11}, Lcom/amazon/kindle/performance/PerformanceEventBuilder;->buildAndSend()V

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v8

    invoke-interface {v6}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v11

    sget-object v13, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v11, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    new-array v13, v15, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 130
    sget-object v16, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v16, v13, v14

    .line 129
    invoke-virtual {v2, v8, v11, v0, v13}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    const/4 v14, 0x1

    goto :goto_2

    .line 133
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v8

    const-string v11, "book"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v11

    sget-object v13, Lcom/amazon/kindle/krx/content/ContentType;->BOOK_SAMPLE:Lcom/amazon/kindle/krx/content/ContentType;

    invoke-virtual {v11, v13}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v11

    const/4 v13, 0x2

    new-array v15, v13, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 134
    sget-object v13, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v13, v15, v14

    sget-object v13, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v14, 0x1

    aput-object v13, v15, v14

    .line 133
    invoke-virtual {v2, v8, v11, v0, v15}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->startExperiences(Lcom/amazon/kindle/model/content/IBookID;ZLjava/lang/String;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 137
    :goto_2
    invoke-virtual {v9}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    .line 138
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v11

    new-array v13, v14, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 139
    sget-object v15, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/16 v17, 0x0

    aput-object v15, v13, v17

    const-string v15, "isLocal"

    .line 138
    invoke-virtual {v2, v15, v8, v11, v13}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 141
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v9

    const/4 v11, 0x2

    new-array v11, v11, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    .line 142
    sget-object v13, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->ONE_TAP_CX:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v13, v11, v17

    sget-object v13, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_DOWNLOAD:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    aput-object v13, v11, v14

    const-string v13, "contentStateAtEntryPoint"

    .line 140
    invoke-virtual {v2, v13, v8, v9, v11}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addAttributes(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 145
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;->values()[Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;

    move-result-object v2

    .line 287
    array-length v8, v2

    const/4 v14, 0x0

    :goto_3
    if-ge v14, v8, :cond_7

    aget-object v9, v2, v14

    .line 146
    new-instance v11, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenMetricsProvider;

    invoke-direct {v11}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenMetricsProvider;-><init>()V

    invoke-virtual {v11, v9, v0}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenMetricsProvider;->getBaseMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;

    move-result-object v11

    invoke-interface {v4, v9, v11}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;->addMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;)V

    .line 147
    new-instance v11, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenValidationProvider;

    invoke-direct {v11}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenValidationProvider;-><init>()V

    invoke-virtual {v11, v9}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenValidationProvider;->getBaseValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;

    move-result-object v11

    invoke-interface {v4, v9, v11}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;->addValidation(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateValidation;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 150
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    const-string v3, "contentMetadata.state"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/amazon/kindle/model/content/ContentState;->isOpenable()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/lit8 v8, v2, 0x1

    if-eqz p6, :cond_8

    .line 152
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Number;->intValue()I

    move-result v2

    new-instance v3, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;

    invoke-direct {v3, v2}, Lcom/amazon/kcp/reader/IReaderController$StartPagePosition;-><init>(I)V

    move-object v11, v3

    goto :goto_4

    :cond_8
    const/4 v11, 0x0

    .line 153
    :goto_4
    new-instance v13, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    .line 154
    new-instance v9, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v9, v2, v3}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;-><init>(J)V

    move-object v2, v13

    move-object v3, v6

    move-object/from16 v4, p5

    move-object/from16 v5, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p3

    .line 153
    invoke-direct/range {v2 .. v11}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;-><init>(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;ZLcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kcp/reader/IReaderController$StartPage;)V

    iput-object v13, v1, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->currentLifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    .line 157
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting book open process for: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->openNextBook()V

    return-void

    :catchall_0
    move-exception v0

    .line 91
    monitor-exit v2

    throw v0
.end method

.method public open(Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    new-instance v6, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;

    invoke-direct {v6}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->open(Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;)V

    return-void
.end method

.method public open(Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;)V
    .locals 8

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 78
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->open(Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Ljava/lang/Integer;)V

    return-void
.end method

.method public open(Lcom/amazon/kindle/krx/content/IBook;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Ljava/lang/Integer;)V
    .locals 8

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->prepareForOpen$krxsdk_release(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 83
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->open(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .locals 7

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance v6, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;

    invoke-direct {v6}, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenPattern;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->open(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;)V

    return-void
.end method

.method public open(Ljava/lang/String;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;)V
    .locals 8

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "source"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pattern"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0, p1}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->fetchMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 69
    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->open(Lcom/amazon/kindle/content/ContentMetadata;Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenPattern;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method

.method public final prepareForOpen$krxsdk_release(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 13

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/BookIdUtils;->parse(Ljava/lang/String;)Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/library/models/BookType;->getBookTypeFromContentType(Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    .line 163
    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    :goto_0
    const-string v1, "BookIdUtils.parse(book.b\u2026ntType(book.contentType))"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isHidden()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/FalkorUtils;->isFalkorAddToLibraryEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    const/4 v12, 0x0

    .line 167
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->fetchMetadata(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 168
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getAuthors()Ljava/lang/String;

    move-result-object v6

    .line 169
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isArchivable()Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->isFalkorEpisode()Z

    move-result v10

    .line 170
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getMimeType()Ljava/lang/String;

    move-result-object v11

    move-object v4, v0

    .line 168
    invoke-interface/range {v3 .. v12}, Lcom/amazon/kindle/content/ILibraryService;->addContentMetadata(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    .line 174
    :goto_2
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v2, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager$prepareForOpen$1;

    invoke-direct {v2, v0}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager$prepareForOpen$1;-><init>(Lcom/amazon/kindle/model/content/IBookID;)V

    invoke-interface {p1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->fetchCoverFuture:Ljava/util/concurrent/Future;

    return-object v1
.end method

.method public registerOpen(Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;
    .locals 3

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->currentLifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    if-eqz v0, :cond_2

    .line 247
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->executingActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    if-eqz p1, :cond_0

    .line 249
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Activity already exists for current book."

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->executingActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 253
    :cond_0
    iput-object p2, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->executingActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    goto :goto_0

    .line 255
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Book with ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " opening ahead of book: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManagerKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Untracked register call for book: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public final setCurrentLifecycle$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->currentLifecycle:Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    return-void
.end method

.method public final setExecutingActivity$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->executingActivity:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    return-void
.end method

.method public final setStatus$krxsdk_release(Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenManager;->status:Lcom/amazon/kindle/krx/content/bookopen/BookOpenManagerStatus;

    return-void
.end method
