.class public abstract Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;
.super Lorg/spongycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor <init>(IIII)V
    .locals 0

    .line 680
    invoke-static {p1, p2, p3, p4}, Lorg/spongycastle/math/ec/ECCurve$AbstractF2m;->buildField(IIII)Lorg/spongycastle/math/field/FiniteField;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/spongycastle/math/ec/ECCurve;-><init>(Lorg/spongycastle/math/field/FiniteField;)V

    return-void
.end method

.method private static buildField(IIII)Lorg/spongycastle/math/field/FiniteField;
    .locals 5

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    new-array p2, v2, [I

    aput v3, p2, v3

    aput p1, p2, v1

    aput p0, p2, v0

    .line 662
    invoke-static {p2}, Lorg/spongycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lorg/spongycastle/math/field/PolynomialExtensionField;

    move-result-object p0

    return-object p0

    .line 659
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k3 must be 0 if k2 == 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-le p2, p1, :cond_3

    if-le p3, p2, :cond_2

    const/4 v4, 0x5

    new-array v4, v4, [I

    aput v3, v4, v3

    aput p1, v4, v1

    aput p2, v4, v0

    aput p3, v4, v2

    const/4 p1, 0x4

    aput p0, v4, p1

    .line 675
    invoke-static {v4}, Lorg/spongycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lorg/spongycastle/math/field/PolynomialExtensionField;

    move-result-object p0

    return-object p0

    .line 672
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k3 must be > k2"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 667
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k2 must be > k1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 652
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "k1 must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
