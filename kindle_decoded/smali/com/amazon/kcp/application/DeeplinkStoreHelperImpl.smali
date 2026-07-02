.class public final Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;
.super Ljava/lang/Object;
.source "DeeplinkStoreHelperImpl.kt"

# interfaces
.implements Lcom/amazon/kcp/application/DeeplinkStoreHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;,
        Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;

.field private static final messageQueue$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->Companion:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;

    .line 60
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion$messageQueue$2;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion$messageQueue$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->messageQueue$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMessageQueue$cp()Lkotlin/Lazy;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->messageQueue$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private final attemptToBorrowWithProgram(Landroid/app/Activity;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;
    .locals 4

    if-nez p2, :cond_0

    .line 191
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    .line 192
    sget-object p1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->NOT_AVAILABLE:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    goto/16 :goto_1

    .line 194
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v0

    const-string v1, "borrowOffer.actionProgram"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->getProgram()Ljava/lang/String;

    move-result-object v0

    .line 195
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to borrow with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    invoke-direct {p0, p2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->borrowAsin(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    move-result-object v1

    .line 198
    sget-object v2, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 p1, 0x2

    const-string p2, "Borrow failed with "

    if-eq v2, p1, :cond_1

    .line 206
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 204
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " because of limit exceeded."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 200
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Borrow succeeded with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object p2

    const-string v0, "borrowOffer.asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->syncAndOpenBook(Landroid/app/Activity;Ljava/lang/String;)V

    :goto_0
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method private final attemptToReturnWithProgram(Landroid/app/Activity;Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Z
    .locals 2

    .line 224
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->LIMIT_EXCEEDED:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    if-ne p2, v0, :cond_0

    if-eqz p3, :cond_0

    .line 225
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v0

    const-string v1, "borrowOffer.actionProgram"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->getProgram()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". limit exceeded, going to store"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 226
    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->goToReturnBook(Landroid/app/Activity;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)V

    .line 227
    sget-object p1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->Companion:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;

    invoke-static {p1}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;->access$getMessageQueue$p(Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/application/DeeplinkEvent;

    sget-object p3, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->END_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    invoke-direct {p2, p3}, Lcom/amazon/kcp/application/DeeplinkEvent;-><init>(Lcom/amazon/kcp/application/DeeplinkEvent$Type;)V

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final borrowAsin(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;
    .locals 10

    .line 258
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 259
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->UNKNOWN:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    const-string v3, "Utils.getFactory()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v4

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getAsin()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$borrowAsin$1;

    invoke-direct {v9, v1, v0}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$borrowAsin$1;-><init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    const-string v7, "kindle-android-deeplink"

    const-string v8, "KindleDeepLinkBorrow"

    move-object v6, p1

    invoke-interface/range {v4 .. v9}, Lcom/amazon/kindle/krx/store/IStoreManager;->borrowOfferFromAsin(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;)V

    .line 284
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 285
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "success.get()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Interrupted while waiting for borrow to finish"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object p1, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->UNKNOWN:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    :goto_0
    return-object p1
.end method

.method private final getBenefitOfferIfExists(Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;
    .locals 3

    .line 244
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAsinOffers()Ljava/util/List;

    move-result-object p1

    const-string/jumbo v0, "resource.asinOffers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    const-string v2, "it"

    .line 245
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionProgram()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    move-result-object v2

    if-ne v2, p2, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;->getActionType()Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;->BORROW:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 244
    :goto_1
    check-cast v0, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    return-object v0
.end method

.method private final syncAndOpenBook(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 15

    .line 299
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSynchronizationManager()Lcom/amazon/kindle/sync/SynchronizationManager;

    move-result-object v0

    .line 300
    new-instance v8, Lcom/amazon/kcp/application/sync/internal/SyncParameters;

    sget-object v2, Lcom/amazon/kcp/application/sync/internal/SyncType;->TODO_LOOKING_FOR_ITEM:Lcom/amazon/kcp/application/sync/internal/SyncType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v8

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/application/sync/internal/SyncParameters;-><init>(Lcom/amazon/kcp/application/sync/internal/SyncType;Ljava/lang/String;ZLjava/util/Date;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IBooleanCallback;)V

    invoke-virtual {v0, v8}, Lcom/amazon/kindle/sync/SynchronizationManager;->sync(Lcom/amazon/kcp/application/sync/internal/SyncParameters;)Z

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 301
    invoke-static/range {v9 .. v14}, Lcom/amazon/kcp/library/TransientActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;ZZ)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "TransientActivity.newInt\u2026false, null, true, false)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p1

    .line 302
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 303
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->Companion:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;

    invoke-static {v0}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;->access$getMessageQueue$p(Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$Companion;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/application/DeeplinkEvent;

    sget-object v2, Lcom/amazon/kcp/application/DeeplinkEvent$Type;->END_BOOK_OPEN:Lcom/amazon/kcp/application/DeeplinkEvent$Type;

    invoke-direct {v1, v2}, Lcom/amazon/kcp/application/DeeplinkEvent;-><init>(Lcom/amazon/kcp/application/DeeplinkEvent$Type;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method


# virtual methods
.method public attemptToBorrow(Landroid/app/Activity;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;)Z
    .locals 8

    const-string/jumbo v0, "originator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resource"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    const-string v1, "ThreadPoolManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_b

    .line 129
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    .line 130
    const-class v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 133
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Customer benefits discovery was null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 137
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasKUSubscription()Z

    move-result v2

    if-nez v2, :cond_1

    .line 138
    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasPrimeSubscription()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasCUSubscription()Z

    move-result v2

    if-nez v2, :cond_1

    .line 141
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    return v1

    .line 145
    :cond_1
    sget-object v2, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->KINDLE_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-direct {p0, p2, v2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->getBenefitOfferIfExists(Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object v2

    .line 146
    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasKUSubscription()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->attemptToBorrowWithProgram(Landroid/app/Activity;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    move-result-object v3

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->NOT_AVAILABLE:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    .line 147
    :goto_0
    sget-object v4, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->BORROW_SUCCESS:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    const/4 v5, 0x1

    if-ne v3, v4, :cond_3

    return v5

    .line 151
    :cond_3
    sget-object v4, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->PRIME_READING:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-direct {p0, p2, v4}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->getBenefitOfferIfExists(Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object v4

    .line 152
    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasPrimeSubscription()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-direct {p0, p1, v4}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->attemptToBorrowWithProgram(Landroid/app/Activity;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    move-result-object v6

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->NOT_AVAILABLE:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    .line 153
    :goto_1
    sget-object v7, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->BORROW_SUCCESS:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    if-ne v6, v7, :cond_5

    return v5

    .line 157
    :cond_5
    sget-object v7, Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;->COMICS_UNLIMITED:Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;

    invoke-direct {p0, p2, v7}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->getBenefitOfferIfExists(Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;Lcom/amazon/kindle/krx/glide/KRXAsinOffer$ActionProgram;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object p2

    .line 158
    invoke-interface {v0}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasCUSubscription()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->attemptToBorrowWithProgram(Landroid/app/Activity;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    move-result-object v0

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->NOT_AVAILABLE:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    .line 159
    :goto_2
    sget-object v7, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;->BORROW_SUCCESS:Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;

    if-ne v0, v7, :cond_7

    return v5

    .line 163
    :cond_7
    invoke-direct {p0, p1, v3, v2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->attemptToReturnWithProgram(Landroid/app/Activity;Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Z

    move-result v2

    if-eqz v2, :cond_8

    return v5

    .line 167
    :cond_8
    invoke-direct {p0, p1, v6, v4}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->attemptToReturnWithProgram(Landroid/app/Activity;Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Z

    move-result v2

    if-eqz v2, :cond_9

    return v5

    .line 171
    :cond_9
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl;->attemptToReturnWithProgram(Landroid/app/Activity;Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$BorrowResult;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Z

    move-result p1

    if-eqz p1, :cond_a

    return v5

    :cond_a
    return v1

    .line 126
    :cond_b
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw p1
.end method

.method public getOfferResource(Ljava/lang/String;)Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;
    .locals 7

    .line 88
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    const-string v1, "ThreadPoolManager.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 92
    sget-object v1, Lcom/amazon/kcp/library/models/internal/AmznBookID;->ASIN_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v1, p1}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 97
    new-instance v2, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    const-string v4, "Utils.getFactory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v3

    new-instance v4, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;

    invoke-direct {v4, p1, v2, v1}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImpl$getOfferResource$1;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V

    const-string v5, "kindle-android-deeplink"

    const-string v6, "KindleDeepLinkOffers"

    invoke-interface {v3, p1, v5, v6, v4}, Lcom/amazon/kindle/krx/store/IStoreManager;->getOffersForAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;)V

    .line 114
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 115
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    .line 117
    :catch_0
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Interrupted while waiting for offers to be fetched"

    invoke-static {p1, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0

    .line 89
    :cond_2
    new-instance p1, Landroid/os/NetworkOnMainThreadException;

    invoke-direct {p1}, Landroid/os/NetworkOnMainThreadException;-><init>()V

    throw p1
.end method

.method public goToReturnBook(Landroid/app/Activity;Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)V
    .locals 1

    const-string/jumbo v0, "originator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asinOffer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v0, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;->INSTANCE:Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;

    invoke-virtual {v0, p2}, Lcom/amazon/kcp/store/StoreReturnBookUrlBuilder;->getBookReturnUrl(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    .line 69
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkStoreHelperImplKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Currently, this program does not support returning books."

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 73
    invoke-static {p2, v0}, Lcom/amazon/kcp/store/StoreScreenlet;->newIntentForUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/ui/ScreenletIntent;

    move-result-object p2

    const-string v0, "StoreScreenlet.newIntentForUrl(returnUrl, null)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/amazon/kcp/store/Store;->getTabId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/amazon/kcp/oob/MainActivity;->newIntent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/ui/ScreenletIntent;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
