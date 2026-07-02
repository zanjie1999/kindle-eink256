.class public final Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;
.super Ljava/lang/Object;
.source "MarkAsReadHiddenItemToastHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Holder;,
        Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;

.field private static final instance$delegate:Lkotlin/Lazy;


# instance fields
.field private volatile autoMarkedAsReadItem:Lcom/amazon/kindle/krx/content/IBook;

.field private volatile lastAutoMARBookCloseTimeMillis:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->Companion:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion;

    .line 23
    sget-object v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion$instance$2;->INSTANCE:Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper$Companion$instance$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->instance$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;-><init>()V

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lkotlin/Lazy;
    .locals 1

    .line 16
    sget-object v0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->instance$delegate:Lkotlin/Lazy;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized onBookLifecycleEvent(Lcom/amazon/kcp/reader/ReaderControllerEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getType()Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;->BOOK_LIFECYCLE_CLOSED:Lcom/amazon/kcp/reader/ReaderControllerEvent$EventType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->autoMarkedAsReadItem:Lcom/amazon/kindle/krx/content/IBook;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderControllerEvent;->getBook()Lcom/amazon/kindle/model/content/ILocalBookInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 70
    :cond_1
    iput-object v2, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->lastAutoMARBookCloseTimeMillis:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onItemAutoMarkedAsRead(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->autoMarkedAsReadItem:Lcom/amazon/kindle/krx/content/IBook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized showToastIfNecessary(Lcom/amazon/kcp/library/LibraryFilterStateManager;Landroid/app/Activity;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    const-string v0, "libraryFilterStateManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->autoMarkedAsReadItem:Lcom/amazon/kindle/krx/content/IBook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 44
    monitor-exit p0

    return-void

    .line 47
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->lastAutoMARBookCloseTimeMillis:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const/16 v0, 0x2710

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 50
    iput-object v1, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->lastAutoMARBookCloseTimeMillis:Ljava/lang/Long;

    .line 51
    iput-object v1, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->autoMarkedAsReadItem:Lcom/amazon/kindle/krx/content/IBook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 55
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedFilterItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/LibraryFilterItem;

    const-string v2, "Unread"

    const-string/jumbo v3, "selectedFilterItem"

    .line 56
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterItem;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 57
    new-instance v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;

    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->mark_as_read_item_hidden_toast:I

    iget-object v3, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->autoMarkedAsReadItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "autoMarkedAsReadItem!!.title"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v0, v2, v3, v4}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;-><init>(ILjava/lang/String;Z)V

    .line 58
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->mark_as_read_item_hidden_toast_for_accessibility:I

    new-array v3, v4, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->autoMarkedAsReadItem:Lcom/amazon/kindle/krx/content/IBook;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p2, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v2, "activity.getString(R.str\u2026MarkedAsReadItem!!.title)"

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v6, Lcom/amazon/kcp/library/ui/LibraryToast;->INSTANCE:Lcom/amazon/kcp/library/ui/LibraryToast;

    const/4 v2, 0x2

    invoke-static {v0, p2, v5, v2, v1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->truncatedString$default(Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;Landroid/app/Activity;IILjava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const/16 v11, 0x8

    const/4 v12, 0x0

    move-object v7, p2

    invoke-static/range {v6 .. v12}, Lcom/amazon/kcp/library/ui/LibraryToast;->show$default(Lcom/amazon/kcp/library/ui/LibraryToast;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;ILjava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_3
    iput-object v1, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->autoMarkedAsReadItem:Lcom/amazon/kindle/krx/content/IBook;

    .line 63
    iput-object v1, p0, Lcom/amazon/kcp/library/MarkAsReadHiddenItemToastHelper;->lastAutoMARBookCloseTimeMillis:Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
