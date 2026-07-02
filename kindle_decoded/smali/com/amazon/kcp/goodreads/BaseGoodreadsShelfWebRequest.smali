.class public abstract Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "BaseGoodreadsShelfWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$Companion;

.field private static final KEY_APPLICATION:Ljava/lang/String; = "x-gr-application"

.field private static final KEY_APP_VERSION:Ljava/lang/String; = "x-gr-application-version"

.field private static final KEY_COMPONENT:Ljava/lang/String; = "x-gr-application-component"

.field private static final KEY_ENTRY_POINT:Ljava/lang/String; = "x-gr-application-page"

.field private static final KEY_HARDWARE_MAKE:Ljava/lang/String; = "x-gr-hw-make"

.field private static final KEY_HARDWARE_MODEL:Ljava/lang/String; = "x-gr-hw-model"

.field private static final KEY_OS_VERSION:Ljava/lang/String; = "x-gr-os-version"

.field private static final RESPONSE_BOOK_URI_KEY:Ljava/lang/String; = "book_uri"

.field private static final RESPONSE_NAME_KEY:Ljava/lang/String; = "name"

.field private static final RESPONSE_SHELF_KEY:Ljava/lang/String; = "shelf"

.field private static final TAG:Ljava/lang/String;

.field private static final VALUE_APPLICATION:Ljava/lang/String; = "Kindle"

.field private static final VALUE_COMPONENT:Ljava/lang/String; = "MarkAsRead"

.field private static final VALUE_ENTRY_POINT:Ljava/lang/String; = "ManualMarkAsReadToast"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final registeredCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->Companion:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$Companion;

    .line 15
    const-class v0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(BaseGoodrea\u2026lfWebRequest::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "registeredCallbacks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->asin:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->registeredCallbacks:Ljava/util/Collection;

    .line 57
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$notifySuccess(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifySuccess(Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;)V

    return-void
.end method

.method private final notifyFailure(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->registeredCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;

    .line 114
    iget-object v2, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->asin:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->requestType()Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    move-result-object v3

    invoke-interface {v1, v2, v3, p1}, Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;->onGoodreadsFailureResponse(Ljava/lang/String;Lcom/amazon/kcp/goodreads/GoodreadsRequestType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic notifyFailure$default(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 111
    sget-object p1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifyFailure(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: notifyFailure"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final notifySuccess(Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;)V
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->registeredCallbacks:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;

    .line 107
    iget-object v2, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->asin:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->requestType()Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    move-result-object v3

    invoke-interface {v1, v2, p1, v3}, Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;->onGoodreadsSuccessResponse(Ljava/lang/String;Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;Lcom/amazon/kcp/goodreads/GoodreadsRequestType;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic notifySuccess$default(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;ILjava/lang/Object;)V
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifySuccess(Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;)V

    return-void

    .line 0
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: notifySuccess"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    invoke-super {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->cancel()V

    return-void
.end method

.method protected final getAsin()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    sget-object v0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->Companion:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$Companion;

    invoke-static {v0}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$Companion;->access$getGOODREADS_METADATA_HEADERS$p(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$Companion;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 2

    .line 68
    new-instance v0, Lcom/amazon/kindle/webservices/JSONResponseHandler;

    new-instance v1, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;-><init>(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;)V

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/JSONResponseHandler;-><init>(Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;)V

    return-object v0
.end method

.method public isAuthenticationRequired()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final isFinished()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->isFinished:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public abstract requestType()Lcom/amazon/kcp/goodreads/GoodreadsRequestType;
.end method

.method public setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    if-eqz p1, :cond_0

    .line 100
    invoke-direct {p0, p1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifyFailure(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    :cond_0
    return-void
.end method
