.class public final Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;
.super Ljava/lang/Object;
.source "AcquireOfferResponse.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;


# instance fields
.field private final error:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

.field private final executionResults:Ljava/lang/String;

.field private final link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

.field private final localizedMessage:Ljava/lang/String;

.field private final orderId:Ljava/lang/String;

.field private final orderItemId:J


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3f

    const/4 v9, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->localizedMessage:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->error:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    iput-object p3, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    iput-object p4, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderId:Ljava/lang/String;

    iput-wide p5, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderItemId:J

    iput-object p7, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->executionResults:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p9, p8, 0x1

    const/4 v0, 0x0

    if-eqz p9, :cond_0

    move-object p9, v0

    goto :goto_0

    :cond_0
    move-object p9, p1

    :goto_0
    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p8, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p8, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p8, 0x10

    if-eqz p1, :cond_4

    const-wide/16 p5, 0x0

    :cond_4
    move-wide v4, p5

    and-int/lit8 p1, p8, 0x20

    if-eqz p1, :cond_5

    move-object p8, v0

    goto :goto_4

    :cond_5
    move-object p8, p7

    :goto_4
    move-object p1, p0

    move-object p2, p9

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    move-wide p6, v4

    .line 12
    invoke-direct/range {p1 .. p8}, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;-><init>(Ljava/lang/String;Lcom/amazon/kindle/krx/glide/AcquireOfferError;Lcom/amazon/kindle/krx/glide/KRXGlideLink;Ljava/lang/String;JLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;

    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->localizedMessage:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->localizedMessage:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->error:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    iget-object v1, p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->error:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    iget-object v1, p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderItemId:J

    iget-wide v2, p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderItemId:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->executionResults:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->executionResults:Ljava/lang/String;

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

.method public getError()Lcom/amazon/kindle/krx/glide/AcquireOfferError;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->error:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    return-object v0
.end method

.method public getExecutionResult()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->executionResults:Ljava/lang/String;

    return-object v0
.end method

.method public getLink()Lcom/amazon/kindle/krx/glide/KRXGlideLink;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->localizedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderItemId()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderItemId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 6

    iget-object v0, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->localizedMessage:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->error:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderId:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderItemId:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->executionResults:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KRXAcquireOfferResponse{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "localizedMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->localizedMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->error:Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", link="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->link:Lcom/amazon/kindle/krx/glide/KRXGlideLink;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", orderId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orderItemId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/store/glide/request/AcquireOfferResponse;->orderItemId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
