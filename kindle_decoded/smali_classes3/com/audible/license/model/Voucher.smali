.class public final Lcom/audible/license/model/Voucher;
.super Ljava/lang/Object;
.source "Voucher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Voucher.kt\ncom/audible/license/model/Voucher\n*L\n1#1,90:1\n*E\n"
.end annotation


# instance fields
.field private final iv:[B

.field private final key:[B

.field private final refreshDate:Ljava/util/Date;

.field private final removalDate:Ljava/util/Date;

.field private final rules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/license/rules/VoucherRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B[BLjava/util/Date;Ljava/util/Date;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "+",
            "Lcom/audible/license/rules/VoucherRule;",
            ">;)V"
        }
    .end annotation

    const-string v0, "rules"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/audible/license/model/Voucher;->key:[B

    iput-object p2, p0, Lcom/audible/license/model/Voucher;->iv:[B

    iput-object p3, p0, Lcom/audible/license/model/Voucher;->refreshDate:Ljava/util/Date;

    iput-object p4, p0, Lcom/audible/license/model/Voucher;->removalDate:Ljava/util/Date;

    iput-object p5, p0, Lcom/audible/license/model/Voucher;->rules:Ljava/util/List;

    const/4 p2, 0x1

    const/4 p3, 0x0

    const/16 p4, 0x10

    if-eqz p1, :cond_1

    .line 47
    array-length p1, p1

    if-ne p1, p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p5, "Key must be 16 bytes long!"

    .line 46
    invoke-static {p1, p5}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    .line 52
    :cond_1
    iget-object p1, p0, Lcom/audible/license/model/Voucher;->iv:[B

    if-eqz p1, :cond_3

    .line 54
    array-length p1, p1

    if-ne p1, p4, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    const-string p1, "IV must be 16 bytes long!"

    .line 53
    invoke-static {p2, p1}, Lcom/audible/mobile/util/Assert;->isTrue(ZLjava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 62
    :cond_0
    const-class v1, Lcom/audible/license/model/Voucher;

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

    .line 64
    :cond_2
    check-cast p1, Lcom/audible/license/model/Voucher;

    .line 66
    iget-object v1, p0, Lcom/audible/license/model/Voucher;->key:[B

    iget-object v3, p1, Lcom/audible/license/model/Voucher;->key:[B

    invoke-static {v1, v3}, Lcom/audible/license/model/VoucherKt;->access$equals([B[B)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 67
    :cond_3
    iget-object v1, p0, Lcom/audible/license/model/Voucher;->iv:[B

    iget-object v3, p1, Lcom/audible/license/model/Voucher;->iv:[B

    invoke-static {v1, v3}, Lcom/audible/license/model/VoucherKt;->access$equals([B[B)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 68
    :cond_4
    iget-object v1, p0, Lcom/audible/license/model/Voucher;->refreshDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/audible/license/model/Voucher;->refreshDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_5

    return v2

    .line 69
    :cond_5
    iget-object v1, p0, Lcom/audible/license/model/Voucher;->removalDate:Ljava/util/Date;

    iget-object v3, p1, Lcom/audible/license/model/Voucher;->refreshDate:Ljava/util/Date;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v0

    if-eqz v1, :cond_6

    return v2

    .line 70
    :cond_6
    iget-object v1, p0, Lcom/audible/license/model/Voucher;->rules:Ljava/util/List;

    iget-object p1, p1, Lcom/audible/license/model/Voucher;->rules:Ljava/util/List;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getIv()[B
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/audible/license/model/Voucher;->iv:[B

    return-object v0
.end method

.method public final getKey()[B
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/audible/license/model/Voucher;->key:[B

    return-object v0
.end method

.method public final getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/license/rules/VoucherRule;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/audible/license/model/Voucher;->rules:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/audible/license/model/Voucher;->key:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v2, p0, Lcom/audible/license/model/Voucher;->iv:[B

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v2, p0, Lcom/audible/license/model/Voucher;->refreshDate:Ljava/util/Date;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 79
    iget-object v2, p0, Lcom/audible/license/model/Voucher;->removalDate:Ljava/util/Date;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 80
    iget-object v1, p0, Lcom/audible/license/model/Voucher;->rules:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voucher(key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/model/Voucher;->key:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/model/Voucher;->iv:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/model/Voucher;->refreshDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", removalDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/model/Voucher;->removalDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/license/model/Voucher;->rules:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
