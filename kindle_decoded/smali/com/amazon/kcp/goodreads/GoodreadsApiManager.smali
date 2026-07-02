.class public final Lcom/amazon/kcp/goodreads/GoodreadsApiManager;
.super Ljava/lang/Object;
.source "GoodreadsApiManager.kt"

# interfaces
.implements Lcom/amazon/kcp/goodreads/IGoodreadsApiManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGoodreadsApiManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GoodreadsApiManager.kt\ncom/amazon/kcp/goodreads/GoodreadsApiManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,88:1\n699#2,9:89\n699#2,9:100\n37#3,2:98\n37#3,2:109\n*E\n*S KotlinDebug\n*F\n+ 1 GoodreadsApiManager.kt\ncom/amazon/kcp/goodreads/GoodreadsApiManager\n*L\n70#1,9:89\n81#1,9:100\n70#1,2:98\n81#1,2:109\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;


# instance fields
.field private final goodreadsAccountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

.field private final registeredCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final requestMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->Companion:Lcom/amazon/kcp/goodreads/GoodreadsApiManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;)V
    .locals 1

    const-string/jumbo v0, "webRequestManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goodreadsAccountUtil"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    iput-object p2, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->goodreadsAccountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    .line 15
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->requestMap:Ljava/util/Map;

    .line 16
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->registeredCallbacks:Ljava/util/Set;

    return-void
.end method

.method private final customerId()Ljava/lang/String;
    .locals 5

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->goodreadsAccountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    invoke-interface {v0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object v0

    const-string v1, "goodreadsAccountUtil.profileLink"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getAmazonUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "goodreadsAccountUtil.profileLink.amazonUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "/"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 91
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 92
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 70
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_0

    .line 93
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 97
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    new-array v1, v2, [Ljava/lang/String;

    .line 99
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 70
    check-cast v0, [Ljava/lang/String;

    .line 71
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    return-object v0

    .line 99
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final goodreadsId()Ljava/lang/String;
    .locals 5

    .line 81
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->goodreadsAccountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    invoke-interface {v0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->getProfileLink()Lcom/amazon/ras/uservalidation/models/ProfileLink;

    move-result-object v0

    const-string v1, "goodreadsAccountUtil.profileLink"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/ras/uservalidation/models/ProfileLink;->getGoodreadsUri()Ljava/lang/String;

    move-result-object v0

    const-string v1, "goodreadsAccountUtil.profileLink.goodreadsUri"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "/"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlin/text/Regex;->split(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_2

    .line 101
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 102
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 103
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 81
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 108
    :cond_2
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_1
    new-array v1, v2, [Ljava/lang/String;

    .line 110
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    check-cast v0, [Ljava/lang/String;

    .line 82
    array-length v1, v0

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    return-object v0

    .line 110
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public fetchRemoteShelf(Ljava/lang/String;)V
    .locals 3

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-virtual {v0}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->requestMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Lcom/amazon/kcp/goodreads/GoodreadsGetShelfWebRequest;

    invoke-direct {p0}, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->customerId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->registeredCallbacks:Ljava/util/Set;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/kcp/goodreads/GoodreadsGetShelfWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->requestMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method

.method public isGoodreadsLinked()Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->goodreadsAccountUtil:Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;

    invoke-interface {v0}, Lcom/amazon/ras/uservalidation/IGoodreadsAccountUtil;->isGrokLinked()Z

    move-result v0

    return v0
.end method

.method public registerCallback(Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;)V
    .locals 1

    const-string v0, "goodreadsResponseCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->registeredCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public updateRemoteShelf(Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;Ljava/lang/String;)V
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shelf"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getAsin()Ljava/lang/String;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->requestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->isFinished()Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->cancel()V

    .line 48
    iget-object v1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->requestMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string/jumbo v1, "none"

    .line 52
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getBookId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 54
    new-instance p2, Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest;

    invoke-direct {p0}, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->goodreadsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->registeredCallbacks:Ljava/util/Set;

    invoke-direct {p2, v1, p1, v0, v2}, Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    return-void

    .line 56
    :cond_2
    new-instance v7, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;

    invoke-direct {p0}, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->customerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsUpdateId;->getRetrievedShelf()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->registeredCallbacks:Ljava/util/Set;

    move-object v1, v7

    move-object v3, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/goodreads/GoodreadsUpdateShelfWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V

    move-object p2, v7

    .line 58
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->requestMap:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsApiManager;->webRequestManager:Lcom/amazon/kindle/webservices/IWebRequestManager;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
