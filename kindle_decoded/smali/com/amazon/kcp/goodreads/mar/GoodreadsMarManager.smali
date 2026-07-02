.class public Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;
.super Ljava/lang/Object;
.source "GoodreadsMarManager.kt"

# interfaces
.implements Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;
.implements Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoodreadsMarManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoodreadsMarManager.kt\ncom/amazon/kcp/goodreads/mar/GoodreadsMarManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,381:1\n1571#2,9:382\n1819#2:391\n1820#2:393\n1580#2:394\n1#3:392\n*E\n*S KotlinDebug\n*F\n+ 1 GoodreadsMarManager.kt\ncom/amazon/kcp/goodreads/mar/GoodreadsMarManager\n*L\n346#1,9:382\n346#1:391\n346#1:393\n346#1:394\n346#1:392\n*E\n"
.end annotation


# static fields
.field private static final ACTION_MAR_GOODREADS_TOAST_ERROR:Ljava/lang/String; = "ErrorToastGoodreadsPushError"

.field private static final ACTION_MAR_GOODREADS_TOAST_NO_NETWORK_ERROR:Ljava/lang/String; = "ErrorToastNoNetwork"

.field public static final Companion:Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;


# instance fields
.field private final alertDialogManager:Lcom/amazon/kindle/krx/application/AlertDialogManager;

.field private final context:Landroid/content/Context;

.field private final goodreadsApiManager:Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

.field private final registeredSubscribers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private final shelfFetchRequestStatuses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;",
            ">;"
        }
    .end annotation
.end field

.field private final shelfUpdateRequestStatuses:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->Companion:Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;Lcom/amazon/kindle/krx/application/AlertDialogManager;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goodreadsApiManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "alertDialogManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->goodreadsApiManager:Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

    iput-object p3, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->alertDialogManager:Lcom/amazon/kindle/krx/application/AlertDialogManager;

    .line 49
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    .line 55
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    .line 61
    new-instance p1, Lcom/amazon/kcp/library/models/ConcurrentHashSet;

    invoke-direct {p1}, Lcom/amazon/kcp/library/models/ConcurrentHashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->registeredSubscribers:Ljava/util/Set;

    return-void
.end method

.method private final getMarkAsReadToastMessage(Ljava/util/List;)Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;)",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;"
        }
    .end annotation

    .line 281
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 285
    new-instance p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    sget v2, Lcom/amazon/kindle/krl/R$string;->goodreads_toast_read_multiple_items:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0, v1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;-><init>(ILjava/lang/String;Z)V

    goto :goto_0

    .line 284
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    sget v3, Lcom/amazon/kindle/krl/R$string;->goodreads_toast_read_single_item:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1, v2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;-><init>(ILjava/lang/String;Z)V

    move-object p1, v0

    goto :goto_0

    .line 283
    :cond_1
    new-instance p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    const-string v0, ""

    invoke-direct {p1, v1, v0, v1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;-><init>(ILjava/lang/String;Z)V

    :goto_0
    return-object p1
.end method

.method private final getMarkAsUnreadToastMessage(Ljava/util/List;)Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;)",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;"
        }
    .end annotation

    .line 294
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 298
    new-instance p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    sget v2, Lcom/amazon/kindle/krl/R$string;->goodreads_toast_unread_multiple_items:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v2, v0, v1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;-><init>(ILjava/lang/String;Z)V

    goto :goto_0

    .line 297
    :cond_0
    new-instance v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    sget v3, Lcom/amazon/kindle/krl/R$string;->goodreads_toast_unread_single_item:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1, v2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;-><init>(ILjava/lang/String;Z)V

    move-object p1, v0

    goto :goto_0

    .line 296
    :cond_1
    new-instance p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    const-string v0, ""

    invoke-direct {p1, v1, v0, v1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;-><init>(ILjava/lang/String;Z)V

    :goto_0
    return-object p1
.end method

.method private final publishErrorToastIfAllRequestsComplete(Ljava/lang/String;)V
    .locals 5

    .line 326
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 327
    iget-object v1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    iget-object v3, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;

    .line 329
    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getComplete()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_1

    return-void

    .line 333
    :cond_1
    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getError()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 334
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 337
    iget-object v3, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 341
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 382
    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 391
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 390
    check-cast v2, Ljava/lang/String;

    .line 346
    iget-object v4, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getGoodreadsUpdateId()Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    move-result-object v3

    :cond_6
    if-eqz v3, :cond_5

    .line 390
    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 350
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v3, v1}, Lcom/amazon/kindle/network/NetworkService;->hasNetworkConnectivity(Landroid/content/Context;Ljava/lang/Integer;Z)Z

    move-result v0

    if-nez v0, :cond_9

    .line 351
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->alertDialogManager:Lcom/amazon/kindle/krx/application/AlertDialogManager;

    sget-object v0, Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/krx/application/AlertDialogManager;->displayAlertDialog(Lcom/amazon/kindle/krx/application/IAlertDialogManager$AlertDialogType;)V

    goto :goto_3

    .line 353
    :cond_9
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->goodreads_toast_update_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026reads_toast_update_error)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->notifySubscribersItemsFailedToMove(Ljava/util/List;Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method private final publishGoodreadsToastIfAllRequestsComplete(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 233
    iget-object v3, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v3, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;

    .line 234
    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getRequestId()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getComplete()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    .line 238
    :cond_0
    new-instance v4, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getBookId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getRetrievedShelf()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v2, v5, v6, v3}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 241
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 246
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->getMarkAsReadToastMessage(Ljava/util/List;)Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    move-result-object p1

    .line 248
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    .line 249
    iget-object v3, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 252
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x33af38

    if-eq v1, v2, :cond_6

    const v2, 0x355996

    if-eq v1, v2, :cond_4

    goto :goto_2

    :cond_4
    const-string/jumbo v1, "read"

    .line 253
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    if-eqz p3, :cond_5

    .line 255
    invoke-direct {p0, v0, p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->submitUpdateRequests(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_2

    .line 257
    :cond_5
    invoke-virtual {p0, v0, p2, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->notifySubscribersItemsReadyToMove(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V

    goto :goto_2

    :cond_6
    const-string/jumbo p1, "none"

    .line 260
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-eqz p3, :cond_7

    return-void

    .line 264
    :cond_7
    invoke-direct {p0, v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->getMarkAsUnreadToastMessage(Ljava/util/List;)Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->notifySubscribersIncompatibleReadStateSelected(Ljava/util/List;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V

    :cond_8
    :goto_2
    return-void
.end method

.method private final submitUpdateRequests(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    .line 123
    iget-object v3, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getAsin()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;

    invoke-direct {v5, v0, v2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 125
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    .line 126
    iget-object v1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->goodreadsApiManager:Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

    invoke-interface {v1, v0, p2}, Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;->updateRemoteShelf(Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public handleIncompatibleGetShelfRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "shelf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getSilentUpdate()Z

    move-result p2

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->publishGoodreadsToastIfAllRequestsComplete(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public handleSuccessfulGetShelfRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "intendedShelf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "retrievedShelf"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;

    if-eqz p2, :cond_0

    .line 193
    invoke-virtual {p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getComplete()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 194
    invoke-virtual {p2, p3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->setBookId(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2, p4}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->setRetrievedShelf(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getRequestId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getSilentUpdate()Z

    move-result p2

    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->publishGoodreadsToastIfAllRequestsComplete(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public handleSuccessfulUpdateShelfRequest(Ljava/lang/String;)V
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;

    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getComplete()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 306
    invoke-virtual {p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getError()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 307
    invoke-virtual {p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->publishErrorToastIfAllRequestsComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public handleUnsuccessfulGetShelfRequest(Ljava/lang/String;)V
    .locals 3

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getComplete()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 216
    invoke-virtual {v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getIntendedShelf()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "none"

    .line 217
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string p1, "currently-reading"

    .line 221
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->setRetrievedShelf(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getSilentUpdate()Z

    move-result v0

    invoke-direct {p0, p1, v1, v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->publishGoodreadsToastIfAllRequestsComplete(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public handleUnsuccessfulUpdateShelfRequest(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 3

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    .line 313
    sget-object v2, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p2, v2, :cond_0

    const-string p2, "ErrorToastNoNetwork"

    goto :goto_0

    :cond_0
    const-string p2, "ErrorToastGoodreadsPushError"

    .line 312
    :goto_0
    invoke-virtual {v0, v1, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    iget-object p2, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfUpdateRequestStatuses:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;

    if-eqz p1, :cond_1

    .line 320
    invoke-virtual {p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getComplete()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 321
    invoke-virtual {p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getError()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 322
    invoke-virtual {p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfUpdate;->getRequestId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->publishErrorToastIfAllRequestsComplete(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public initialize()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->goodreadsApiManager:Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

    invoke-interface {v0, p0}, Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;->registerCallback(Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;)V

    return-void
.end method

.method public final isNotOnShelf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    const-string v0, "currentShelf"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intendedShelf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;->getIntendedShelf()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public moveToShelf(Ljava/util/List;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shelf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->goodreadsApiManager:Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

    invoke-interface {v0}, Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;->isGoodreadsLinked()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 102
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shouldQueryBeforeMoveToShelf(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UUID.randomUUID().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    .line 105
    iget-object v3, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getAsin()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;

    invoke-virtual {v2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getTitle()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x1

    invoke-direct {v5, p2, v0, v2, v6}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 107
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    .line 108
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->goodreadsApiManager:Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

    invoke-virtual {p2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getAsin()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;->fetchRemoteShelf(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void

    .line 113
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->submitUpdateRequests(Ljava/util/List;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public notifySubscribersIncompatibleReadStateSelected(Ljava/util/List;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;",
            ")V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->registeredSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;

    .line 367
    invoke-interface {v1, p1, p2}, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;->onIncompatibleReadStateSelected(Ljava/util/List;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySubscribersItemsFailedToMove(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->registeredSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;

    .line 360
    invoke-interface {v1, p1, p2}, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;->onItemsFailedToMove(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifySubscribersItemsReadyToMove(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;",
            ")V"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shelf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->registeredSubscribers:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;

    .line 272
    invoke-interface {v1, p1, p2, p3}, Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;->onItemsReadyToMove(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGoodreadsFailureResponse(Ljava/lang/String;Lcom/amazon/kcp/goodreads/GoodreadsRequestType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 1

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$2:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->handleUnsuccessfulUpdateShelfRequest(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->handleUnsuccessfulGetShelfRequest(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onGoodreadsSuccessResponse(Ljava/lang/String;Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;Lcom/amazon/kcp/goodreads/GoodreadsRequestType;)V
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "requestType"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    sget-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$1:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, v0, p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->handleSuccessfulUpdateShelfRequest(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    .line 152
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->handleUnsuccessfulGetShelfRequest(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;->getShelf()Ljava/lang/String;

    move-result-object p3

    .line 156
    invoke-virtual {p2}, Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;->getBookId()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "read"

    .line 158
    invoke-virtual {p0, p3, v0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->isNotOnShelf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->handleSuccessfulGetShelfRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "none"

    .line 159
    invoke-virtual {p0, p3, v0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->isNotOnShelf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->handleSuccessfulGetShelfRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_4
    invoke-virtual {p0, p3, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->handleIncompatibleGetShelfRequest(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onReadStateChanged(Ljava/util/List;Lcom/amazon/kindle/krx/content/IBook$ReadState;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;",
            ">;",
            "Lcom/amazon/kindle/krx/content/IBook$ReadState;",
            ")V"
        }
    .end annotation

    const-string v0, "items"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "readState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->goodreadsApiManager:Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

    invoke-interface {v0}, Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;->isGoodreadsLinked()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 72
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const-string/jumbo v1, "read"

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;

    .line 79
    new-instance v4, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->getAsin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6, v6, v3}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    sget-object p1, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_2

    .line 83
    :cond_2
    invoke-direct {p0, v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->getMarkAsReadToastMessage(Ljava/util/List;)Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->notifySubscribersItemsReadyToMove(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V

    goto :goto_2

    .line 82
    :cond_3
    invoke-direct {p0, v0}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->getMarkAsUnreadToastMessage(Ljava/util/List;)Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->notifySubscribersIncompatibleReadStateSelected(Ljava/util/List;Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;

    .line 91
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$ReadState;->READ:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-ne p2, v0, :cond_5

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "none"

    :goto_1
    move-object v3, v1

    .line 92
    iget-object p2, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->shelfFetchRequestStatuses:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->getAsin()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "UUID.randomUUID().toString()"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->getTitle()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/goodreads/mar/GoodreadsShelfFetch;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    iget-object p2, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->goodreadsApiManager:Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarItem;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;->fetchRemoteShelf(Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public registerSubscriber(Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarSubscriber;)V
    .locals 1

    const-string/jumbo v0, "subscriber"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->registeredSubscribers:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final shouldQueryBeforeMoveToShelf(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "ids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;

    .line 137
    invoke-virtual {v0}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getRetrievedShelf()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    if-eqz v1, :cond_0

    return v2

    :cond_3
    return v1
.end method
