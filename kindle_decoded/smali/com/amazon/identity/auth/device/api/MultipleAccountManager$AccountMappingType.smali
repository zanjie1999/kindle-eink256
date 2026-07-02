.class public abstract Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MultipleAccountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AccountMappingType"
.end annotation


# instance fields
.field private final gF:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->gF:Ljava/lang/String;

    .line 70
    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    check-cast p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;

    .line 116
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->gF:Ljava/lang/String;

    iget-object v3, p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->gF:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->mValue:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getAccountMappingType()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->gF:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountMappingValue()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3
    .annotation build Lcom/amazon/fireos/sdk/annotations/FireOsSdk;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->gF:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    .line 96
    iget-object v2, p0, Lcom/amazon/identity/auth/device/api/MultipleAccountManager$AccountMappingType;->mValue:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
