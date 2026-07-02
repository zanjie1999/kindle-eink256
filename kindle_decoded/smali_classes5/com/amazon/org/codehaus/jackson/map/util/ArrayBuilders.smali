.class public final Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;,
        Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;,
        Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;,
        Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;,
        Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;,
        Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;,
        Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;,
        Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    }
.end annotation


# instance fields
.field _booleanBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

.field _byteBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

.field _doubleBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

.field _floatBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

.field _intBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

.field _longBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

.field _shortBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    .line 19
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    .line 20
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    .line 21
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    .line 22
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    .line 24
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    .line 25
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    return-void
.end method

.method public static addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 171
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 244
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayAsIterator([Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 239
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;

    invoke-direct {v0, p0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayToSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    .line 149
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 150
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static insertInList([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 184
    array-length v0, p0

    .line 186
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v3, 0x1

    .line 188
    invoke-static {p0, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :cond_0
    aput-object p1, v1, v2

    return-object v1
.end method

.method public static insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 205
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_2

    .line 209
    aget-object v4, p0, v2

    if-ne v4, p1, :cond_1

    if-nez v2, :cond_0

    return-object p0

    .line 215
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 216
    invoke-static {p0, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 217
    aput-object p1, p0, v1

    return-object v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    add-int/lit8 v4, v0, 0x1

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    if-lez v0, :cond_3

    .line 225
    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :cond_3
    aput-object p1, v2, v1

    return-object v2
.end method


# virtual methods
.method public getBooleanBuilder()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_booleanBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$BooleanBuilder;

    return-object v0
.end method

.method public getByteBuilder()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_byteBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ByteBuilder;

    return-object v0
.end method

.method public getDoubleBuilder()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_doubleBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$DoubleBuilder;

    return-object v0
.end method

.method public getFloatBuilder()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_floatBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$FloatBuilder;

    return-object v0
.end method

.method public getIntBuilder()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_intBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$IntBuilder;

    return-object v0
.end method

.method public getLongBuilder()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_longBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$LongBuilder;

    return-object v0
.end method

.method public getShortBuilder()Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;-><init>()V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->_shortBuilder:Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders$ShortBuilder;

    return-object v0
.end method
