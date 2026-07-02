.class public final Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest;
.super Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;
.source "GoodreadsDeleteShelfRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest$Companion;
    }
.end annotation


# static fields
.field private static final DELETE_LIBRARY_URL_FORMAT:Ljava/lang/String; = "https://kca.amazon.com/kca/library/%s/book/%s"


# instance fields
.field private final bookId:Ljava/lang/String;

.field private final goodreadsId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "goodreadsId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bookId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asin"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "registeredCallbacks"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0, p3, p4}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;-><init>(Ljava/lang/String;Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest;->goodreadsId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest;->bookId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE"

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 4

    .line 19
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest;->goodreadsId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/amazon/kcp/goodreads/GoodreadsDeleteShelfRequest;->bookId:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "https://kca.amazon.com/kca/library/%s/book/%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public requestType()Lcom/amazon/kcp/goodreads/GoodreadsRequestType;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kcp/goodreads/GoodreadsRequestType;->UPDATE_SHELF:Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    return-object v0
.end method
