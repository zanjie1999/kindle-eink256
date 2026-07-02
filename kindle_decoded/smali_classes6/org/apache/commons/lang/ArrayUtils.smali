.class public Lorg/apache/commons/lang/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# static fields
.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 56
    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/String;

    .line 64
    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v1, v0, [I

    .line 76
    sput-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_INT_ARRAY:[I

    new-array v0, v0, [B

    .line 92
    sput-object v0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-void
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1676
    invoke-static {p0, p1}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    .line 1573
    invoke-static {p0, p1, v0}, Lorg/apache/commons/lang/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method

.method public static indexOf([Ljava/lang/Object;Ljava/lang/Object;I)I
    .locals 2

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    :cond_1
    if-nez p1, :cond_3

    .line 1598
    :goto_0
    array-length p1, p0

    if-ge p2, p1, :cond_5

    .line 1599
    aget-object p1, p0, p2

    if-nez p1, :cond_2

    return p2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1603
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1604
    :goto_1
    array-length v1, p0

    if-ge p2, v1, :cond_5

    .line 1605
    aget-object v1, p0, p2

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    return p2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    return v0
.end method

.method public static subarray([BII)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 1006
    :cond_1
    array-length v1, p0

    if-le p2, v1, :cond_2

    .line 1007
    array-length p2, p0

    :cond_2
    sub-int/2addr p2, p1

    if-gtz p2, :cond_3

    .line 1011
    sget-object p0, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_BYTE_ARRAY:[B

    return-object p0

    .line 1014
    :cond_3
    new-array v1, p2, [B

    .line 1015
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
