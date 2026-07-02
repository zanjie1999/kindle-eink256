.class public final Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;
.super Ljava/lang/Object;
.source "LicenseDenialReason.kt"


# instance fields
.field private final message:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "message"
    .end annotation
.end field

.field private final rejectionReason:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "rejectionReason"
    .end annotation
.end field

.field private final validationType:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "validationType"
    .end annotation
.end field


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;

    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->validationType:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    iget-object v1, p1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->validationType:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->rejectionReason:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    iget-object v1, p1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->rejectionReason:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->message:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->message:Ljava/lang/String;

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

.method public final getRejectionReason()Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->rejectionReason:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    return-object v0
.end method

.method public final getValidationType()Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->validationType:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->validationType:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->rejectionReason:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LicenseDenialReason(validationType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->validationType:Lcom/audible/mobile/contentlicense/networking/request/RightsValidation;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rejectionReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->rejectionReason:Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReasonType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/contentlicense/networking/model/LicenseDenialReason;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
