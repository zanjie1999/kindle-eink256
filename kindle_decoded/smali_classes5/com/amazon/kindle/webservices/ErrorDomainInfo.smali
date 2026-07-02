.class public final Lcom/amazon/kindle/webservices/ErrorDomainInfo;
.super Ljava/lang/Object;
.source "ErrorDomainInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;

.field private static final NONE_ENDPOINT:Ljava/lang/String; = "None"

.field private static final noRequestErrorDomainInfo:Lcom/amazon/kindle/webservices/ErrorDomainInfo;


# instance fields
.field private final endpoint:Ljava/lang/String;

.field private final httpStatusCode:I

.field private final operation:Lcom/amazon/kindle/webservices/DownloadRequestOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->FACTORY:Lcom/amazon/kindle/webservices/ErrorDomainInfo$FACTORY;

    .line 28
    new-instance v0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    sget-object v1, Lcom/amazon/kindle/webservices/DownloadRequestOperation;->NONE:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    const-string v2, "None"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kindle/webservices/ErrorDomainInfo;-><init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/DownloadRequestOperation;I)V

    sput-object v0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->noRequestErrorDomainInfo:Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/DownloadRequestOperation;I)V
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "operation"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->endpoint:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->operation:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    iput p3, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->httpStatusCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/webservices/ErrorDomainInfo;

    iget-object v0, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->endpoint:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->endpoint:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->operation:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    iget-object v1, p1, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->operation:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->httpStatusCode:I

    iget p1, p1, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->httpStatusCode:I

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getEndpoint()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpStatusCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->httpStatusCode:I

    return v0
.end method

.method public final getOperation()Lcom/amazon/kindle/webservices/DownloadRequestOperation;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->operation:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->endpoint:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->operation:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->httpStatusCode:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorDomainInfo(endpoint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->operation:Lcom/amazon/kindle/webservices/DownloadRequestOperation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", httpStatusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/webservices/ErrorDomainInfo;->httpStatusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
