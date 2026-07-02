.class public Lcom/amazon/identity/auth/device/ff;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/ff$a;
    }
.end annotation


# instance fields
.field private ml:Z

.field private mm:Ljava/lang/String;


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/identity/auth/device/ff;->ml:Z

    iput-object p2, p0, Lcom/amazon/identity/auth/device/ff;->mm:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected e(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lcom/amazon/identity/auth/device/ff;

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/amazon/identity/auth/device/ff;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/identity/auth/device/ff;

    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/ff;->e(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ff;->isSupported()Z

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ff;->isSupported()Z

    move-result v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ff;->et()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ff;->et()Ljava/lang/String;

    move-result-object p1

    if-nez v1, :cond_4

    if-eqz p1, :cond_5

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    :goto_0
    return v2

    :cond_5
    return v0
.end method

.method public et()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ff;->mm:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ff;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x4f

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ff;->et()Ljava/lang/String;

    move-result-object v1

    mul-int/lit8 v0, v0, 0x3b

    if-nez v1, :cond_1

    const/16 v1, 0x2b

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public isSupported()Z
    .locals 1

    .line 19
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/ff;->ml:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmsRetrieverSupportInfo(mIsSupported="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ff;->isSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAppHash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ff;->et()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
