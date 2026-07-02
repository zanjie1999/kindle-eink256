.class public Lcom/amazon/identity/auth/device/fc;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/fc$a;
    }
.end annotation


# instance fields
.field private ma:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

.field private mb:Lcom/amazon/identity/auth/device/fb;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;Lcom/amazon/identity/auth/device/fb;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fc;->ma:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fc;->mb:Lcom/amazon/identity/auth/device/fb;

    return-void
.end method


# virtual methods
.method protected e(Ljava/lang/Object;)Z
    .locals 0

    .line 13
    instance-of p1, p1, Lcom/amazon/identity/auth/device/fc;

    return p1
.end method

.method public eo()Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fc;->ma:Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    return-object v0
.end method

.method public ep()Lcom/amazon/identity/auth/device/fb;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fc;->mb:Lcom/amazon/identity/auth/device/fb;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 13
    :cond_0
    instance-of v1, p1, Lcom/amazon/identity/auth/device/fc;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/amazon/identity/auth/device/fc;

    invoke-virtual {p1, p0}, Lcom/amazon/identity/auth/device/fc;->e(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fc;->eo()Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc;->eo()Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    move-result-object v3

    if-nez v1, :cond_3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fc;->ep()Lcom/amazon/identity/auth/device/fb;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc;->ep()Lcom/amazon/identity/auth/device/fb;

    move-result-object p1

    if-nez v1, :cond_5

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p1}, Lcom/amazon/identity/auth/device/fb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    return v2

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 13
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fc;->eo()Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    move-result-object v0

    const/16 v1, 0x2b

    if-nez v0, :cond_0

    const/16 v0, 0x2b

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x3b

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fc;->ep()Lcom/amazon/identity/auth/device/fb;

    move-result-object v2

    mul-int/lit8 v0, v0, 0x3b

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/fb;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CustomerInformationResult(mResultType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fc;->eo()Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mInformation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/fc;->ep()Lcom/amazon/identity/auth/device/fb;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
