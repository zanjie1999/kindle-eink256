.class public Lorg/spongycastle/math/ec/ECFieldElement$F2m;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# instance fields
.field private ks:[I

.field private m:I

.field private representation:I

.field private x:Lorg/spongycastle/math/ec/LongArray;


# direct methods
.method public constructor <init>(IIIILjava/math/BigInteger;)V
    .locals 4

    .line 550
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 553
    iput v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    new-array p3, v1, [I

    aput p2, p3, v0

    .line 554
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    goto :goto_0

    :cond_0
    if-ge p3, p4, :cond_2

    if-lez p3, :cond_1

    const/4 v3, 0x3

    .line 568
    iput v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    new-array v3, v3, [I

    aput p2, v3, v0

    aput p3, v3, v1

    aput p4, v3, v2

    .line 569
    iput-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 572
    :goto_0
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 573
    new-instance p1, Lorg/spongycastle/math/ec/LongArray;

    invoke-direct {p1, p5}, Lorg/spongycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    iput-object p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    return-void

    .line 565
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be larger than 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 560
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "k2 must be smaller than k3"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor <init>(I[ILorg/spongycastle/math/ec/LongArray;)V
    .locals 1

    .line 593
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 594
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    .line 595
    array-length p1, p2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    .line 596
    iput-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 597
    iput-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    return-void
.end method

.method public static checkFieldElements(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V
    .locals 2

    .line 650
    instance-of v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-eqz v0, :cond_2

    instance-of v0, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    if-eqz v0, :cond_2

    .line 656
    check-cast p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 657
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 659
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v0, v1, :cond_1

    .line 665
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {p0, p1}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 667
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Field elements are not elements of the same field F2m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 662
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "One of the F2m field elements has incorrect representation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 652
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Field elements are not both instances of ECFieldElement.F2m"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 676
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/LongArray;

    .line 677
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 678
    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 679
    new-instance p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, v1, v2, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public addOne()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 684
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3}, Lorg/spongycastle/math/ec/LongArray;->addOne()Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public bitLength()I
    .locals 1

    .line 602
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->degree()I

    move-result v0

    return v0
.end method

.method public divide(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .line 731
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/ECFieldElement;->invert()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 732
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 850
    :cond_0
    instance-of v1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 855
    :cond_1
    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    .line 857
    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    iget v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->representation:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    .line 859
    invoke-static {v1, v3}, Lorg/spongycastle/util/Arrays;->areEqual([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 860
    invoke-virtual {v1, p1}, Lorg/spongycastle/math/ec/LongArray;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 632
    iget v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 865
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([I)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 771
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3, v1, v2}, Lorg/spongycastle/math/ec/LongArray;->modInverse(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public isOne()Z
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isOne()Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 612
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isZero()Z

    move-result v0

    return v0
.end method

.method public multiply(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 702
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3, p1, v1, v2}, Lorg/spongycastle/math/ec/LongArray;->modMultiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object p1

    invoke-direct {v0, v1, v2, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public multiplyMinusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .line 707
    invoke-virtual {p0, p1, p2, p3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public multiplyPlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 712
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    check-cast p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    check-cast p3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p3, p3, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 714
    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, p1, v1, v2}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v1

    .line 715
    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {p2, p3, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object p2

    if-eq v1, v0, :cond_0

    if-ne v1, p1, :cond_1

    .line 719
    :cond_0
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/LongArray;

    :cond_1
    const/4 p1, 0x0

    .line 722
    invoke-virtual {v1, p2, p1}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 723
    iget p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->reduce(I[I)V

    .line 725
    new-instance p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, p2, p3, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public negate()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    return-object p0
.end method

.method public sqrt()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 776
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 777
    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isOne()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->isZero()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    add-int/lit8 v2, v1, -0x1

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v2, v1, v3}, Lorg/spongycastle/math/ec/LongArray;->modSquareN(II[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v0

    .line 783
    new-instance v1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {v1, v2, v3, v0}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public square()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 743
    new-instance v0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v3, v1, v2}, Lorg/spongycastle/math/ec/LongArray;->modSquare(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object v0
.end method

.method public squarePlusProduct(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 4

    .line 753
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    check-cast p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p1, p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    check-cast p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget-object p2, p2, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    .line 755
    iget v1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/math/ec/LongArray;->square(I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object v1

    .line 756
    iget v2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v3, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {p1, p2, v2, v3}, Lorg/spongycastle/math/ec/LongArray;->multiply(Lorg/spongycastle/math/ec/LongArray;I[I)Lorg/spongycastle/math/ec/LongArray;

    move-result-object p1

    if-ne v1, v0, :cond_0

    .line 760
    invoke-virtual {v1}, Lorg/spongycastle/math/ec/LongArray;->clone()Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lorg/spongycastle/math/ec/LongArray;

    :cond_0
    const/4 p2, 0x0

    .line 763
    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->addShiftedByWords(Lorg/spongycastle/math/ec/LongArray;I)V

    .line 764
    iget p1, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-virtual {v1, p1, p2}, Lorg/spongycastle/math/ec/LongArray;->reduce(I[I)V

    .line 766
    new-instance p1, Lorg/spongycastle/math/ec/ECFieldElement$F2m;

    iget p2, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->m:I

    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->ks:[I

    invoke-direct {p1, p2, v0, v1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/spongycastle/math/ec/LongArray;)V

    return-object p1
.end method

.method public subtract(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 0

    .line 690
    invoke-virtual {p0, p1}, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->add(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object p1

    return-object p1
.end method

.method public testBitZero()Z
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->testBitZero()Z

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 622
    iget-object v0, p0, Lorg/spongycastle/math/ec/ECFieldElement$F2m;->x:Lorg/spongycastle/math/ec/LongArray;

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
