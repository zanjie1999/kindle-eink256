.class public final Lcom/audible/license/model/VoucherKt;
.super Ljava/lang/Object;
.source "Voucher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVoucher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Voucher.kt\ncom/audible/license/model/VoucherKt\n*L\n1#1,90:1\n*E\n"
.end annotation


# direct methods
.method public static final synthetic access$equals([B[B)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/audible/license/model/VoucherKt;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method private static final equals([B[B)Z
    .locals 0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
