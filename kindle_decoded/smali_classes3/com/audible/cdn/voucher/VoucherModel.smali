.class public final Lcom/audible/cdn/voucher/VoucherModel;
.super Ljava/lang/Object;
.source "VoucherModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/cdn/voucher/VoucherModel$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucherModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VoucherModel.kt\ncom/audible/cdn/voucher/VoucherModel\n*L\n1#1,62:1\n*E\n"
.end annotation


# instance fields
.field private final iv:[B

.field private final key:[B

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/cdn/voucher/VoucherModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/cdn/voucher/VoucherModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 44
    :cond_0
    const-class v1, Lcom/audible/cdn/voucher/VoucherModel;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    return v2

    :cond_2
    if-eqz p1, :cond_6

    .line 46
    check-cast p1, Lcom/audible/cdn/voucher/VoucherModel;

    .line 48
    iget-object v1, p0, Lcom/audible/cdn/voucher/VoucherModel;->key:[B

    iget-object v3, p1, Lcom/audible/cdn/voucher/VoucherModel;->key:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 49
    :cond_3
    iget-object v1, p0, Lcom/audible/cdn/voucher/VoucherModel;->iv:[B

    iget-object v3, p1, Lcom/audible/cdn/voucher/VoucherModel;->iv:[B

    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 50
    :cond_4
    iget-object v1, p0, Lcom/audible/cdn/voucher/VoucherModel;->rules:Ljava/util/List;

    iget-object p1, p1, Lcom/audible/cdn/voucher/VoucherModel;->rules:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0

    .line 46
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.audible.cdn.voucher.VoucherModel"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getIv()[B
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/audible/cdn/voucher/VoucherModel;->iv:[B

    return-object v0
.end method

.method public final getKey()[B
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/audible/cdn/voucher/VoucherModel;->key:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/audible/cdn/voucher/VoucherModel;->key:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 57
    iget-object v1, p0, Lcom/audible/cdn/voucher/VoucherModel;->iv:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 58
    iget-object v1, p0, Lcom/audible/cdn/voucher/VoucherModel;->rules:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoucherModel(key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/cdn/voucher/VoucherModel;->key:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/cdn/voucher/VoucherModel;->iv:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/cdn/voucher/VoucherModel;->rules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
