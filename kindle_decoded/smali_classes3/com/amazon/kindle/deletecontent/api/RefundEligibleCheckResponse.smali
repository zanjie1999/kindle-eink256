.class public final Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;
.super Ljava/lang/Object;
.source "DeleteContentApiModel.kt"


# instance fields
.field private final error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

.field private final ineligibilityReason:Ljava/lang/String;

.field private final isEligible:Z

.field private final orderId:Ljava/lang/String;

.field private final success:Z


# direct methods
.method public constructor <init>(ZLcom/amazon/kindle/deletecontent/api/DeleteContentError;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->success:Z

    iput-object p2, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    iput-boolean p3, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->isEligible:Z

    iput-object p4, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->orderId:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->ineligibilityReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;

    iget-boolean v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->success:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->success:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    iget-object v1, p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->isEligible:Z

    iget-boolean v1, p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->isEligible:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->orderId:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->orderId:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->ineligibilityReason:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->ineligibilityReason:Ljava/lang/String;

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

.method public final getError()Lcom/amazon/kindle/deletecontent/api/DeleteContentError;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSuccess()Z
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->success:Z

    return v0
.end method

.method public hashCode()I
    .locals 4

    iget-boolean v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->success:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/deletecontent/api/DeleteContentError;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->isEligible:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->orderId:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->ineligibilityReason:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_4
    add-int/2addr v0, v3

    return v0
.end method

.method public final isEligible()Z
    .locals 1

    .line 65
    iget-boolean v0, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->isEligible:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefundEligibleCheckResponse(success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", error="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->error:Lcom/amazon/kindle/deletecontent/api/DeleteContentError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isEligible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->isEligible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", orderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->orderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ineligibilityReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/deletecontent/api/RefundEligibleCheckResponse;->ineligibilityReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
