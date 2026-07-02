.class public final Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;
.super Ljava/lang/Object;
.source "ClickstreamAttributionRecord.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord$Companion;
    }
.end annotation


# instance fields
.field private final info:Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;

.field private final legalEntityId:I

.field private final remoteAddress:Ljava/lang/String;

.field private final requestId:Ljava/lang/String;

.field private final sessionId:Ljava/lang/String;

.field private final statusCode:I

.field private final userAgent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;)V
    .locals 1

    const-string v0, "requestId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sessionId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteAddress"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userAgent"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->requestId:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->sessionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->remoteAddress:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->userAgent:Ljava/lang/String;

    iput p5, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->legalEntityId:I

    iput p6, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->statusCode:I

    iput-object p7, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->info:Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->requestId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->requestId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->sessionId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->sessionId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->remoteAddress:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->remoteAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->userAgent:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->userAgent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->legalEntityId:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->legalEntityId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->statusCode:I

    iget v1, p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->statusCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->info:Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;

    iget-object p1, p1, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->info:Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;

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

.method public final getInfo()Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->info:Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;

    return-object v0
.end method

.method public final getLegalEntityId()I
    .locals 1

    .line 14
    iget v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->legalEntityId:I

    return v0
.end method

.method public final getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->remoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->statusCode:I

    return v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->requestId:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->sessionId:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->remoteAddress:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->userAgent:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->legalEntityId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->statusCode:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->info:Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClickstreamAttributionRecord(requestId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->remoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userAgent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", legalEntityId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->legalEntityId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->info:Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
