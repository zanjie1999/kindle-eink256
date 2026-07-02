.class public final Lcom/amazon/kcp/goodreads/GoodreadsGetShelfWebRequest;
.super Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;
.source "GoodreadsGetShelfWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/goodreads/GoodreadsGetShelfWebRequest$Companion;
    }
.end annotation


# static fields
.field private static final GET_LIBRARY_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s"


# instance fields
.field private final customerId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/goodreads/GoodreadsGetShelfWebRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/goodreads/GoodreadsGetShelfWebRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "customerId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "registeredCallbacks"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsGetShelfWebRequest;->customerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 18
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kcp/goodreads/GoodreadsGetShelfWebRequest;->customerId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->getAsin()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "https://kca.amazon.com/kca/library:amzn/%s/book:amzn/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public requestType()Lcom/amazon/kcp/goodreads/GoodreadsRequestType;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->GET_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    return-object v0
.end method
