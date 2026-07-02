.class public final Lcom/amazon/kindle/webservices/HttpResponseProperties;
.super Ljava/lang/Object;
.source "HttpResponseProperties.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHttpResponseProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpResponseProperties.kt\ncom/amazon/kindle/webservices/HttpResponseProperties\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,153:1\n1819#2,2:154\n*E\n*S KotlinDebug\n*F\n+ 1 HttpResponseProperties.kt\ncom/amazon/kindle/webservices/HttpResponseProperties\n*L\n139#1,2:154\n*E\n"
.end annotation


# static fields
.field public static final FACTORY:Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final contentEncoding:Ljava/lang/String;

.field private final contentLength:Ljava/lang/Long;

.field private final contentType:Ljava/lang/String;

.field private final headers:Lokhttp3/Headers;

.field private final responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->FACTORY:Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;

    .line 68
    const-class v0, Lcom/amazon/kindle/webservices/HttpResponseProperties$FACTORY;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;)V
    .locals 7

    const-string v0, "headers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/amazon/kindle/webservices/HTTPResponseStatus;->Companion:Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/webservices/HTTPResponseStatus$Companion;->fromHttpCode(I)Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    move-result-object v2

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/webservices/HttpResponseProperties;-><init>(Lcom/amazon/kindle/webservices/HTTPResponseStatus;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/webservices/HTTPResponseStatus;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lokhttp3/Headers;)V
    .locals 1

    const-string/jumbo v0, "responseStatus"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headers"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentLength:Ljava/lang/Long;

    iput-object p3, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentType:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentEncoding:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/webservices/HttpResponseProperties;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/webservices/HttpResponseProperties;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    iget-object v1, p1, Lcom/amazon/kindle/webservices/HttpResponseProperties;->responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentLength:Ljava/lang/Long;

    iget-object v1, p1, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentLength:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentType:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentType:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentEncoding:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentEncoding:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    iget-object p1, p1, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getContentLength()Ljava/lang/Long;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method public final getContentType()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeaderIterator()Ljava/util/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 139
    iget-object v1, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    invoke-virtual {v1}, Lokhttp3/Headers;->names()Ljava/util/Set;

    move-result-object v1

    const-string v2, "headers.names()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "name"

    .line 140
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    invoke-virtual {v3, v2}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    const-string v4, "headers.values(name)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 142
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaderValues(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "headers.values(name)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getLastValueOfHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, p1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLogSensitiveString()Ljava/lang/String;
    .locals 6

    .line 146
    const-class v0, Lcom/amazon/kindle/webservices/HttpResponseProperties;

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v1

    const-string v2, ", contentEncoding="

    const-string v3, ", contentType="

    const-string v4, ", contentLength="

    const-string v5, "(responseStatus="

    if-eqz v1, :cond_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentLength:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", headers={"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "})"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentLength:Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponseStatus()Lcom/amazon/kindle/webservices/HTTPResponseStatus;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentLength:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentType:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentEncoding:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lokhttp3/Headers;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpResponseProperties(responseStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->responseStatus:Lcom/amazon/kindle/webservices/HTTPResponseStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentLength:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", contentEncoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->contentEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/HttpResponseProperties;->headers:Lokhttp3/Headers;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
