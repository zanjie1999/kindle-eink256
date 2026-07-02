.class public final Lcom/fasterxml/jackson/databind/util/ArrayBuilders;
.super Ljava/lang/Object;
.source "ArrayBuilders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;,
        Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
    }
.end annotation


# instance fields
.field private _booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

.field private _byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

.field private _doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

.field private _floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

.field private _intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

.field private _longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

.field private _shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    .line 21
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    .line 22
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    .line 23
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    .line 24
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    .line 26
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    .line 27
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    return-void
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

    .line 187
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    .line 189
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    .line 190
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getArrayComparator(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 159
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 160
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 161
    new-instance v2, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;

    invoke-direct {v2, v1, v0, p0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$1;-><init>(Ljava/lang/Class;ILjava/lang/Object;)V

    return-object v2
.end method

.method public static setAndArray(Ljava/util/Set;[Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;[TT;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    .line 209
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    .line 211
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_1

    .line 214
    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_1

    aget-object v2, p1, v1

    .line 215
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public getBooleanBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_booleanBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$BooleanBuilder;

    return-object v0
.end method

.method public getByteBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_byteBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ByteBuilder;

    return-object v0
.end method

.method public getDoubleBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_doubleBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$DoubleBuilder;

    return-object v0
.end method

.method public getFloatBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_floatBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$FloatBuilder;

    return-object v0
.end method

.method public getIntBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_intBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$IntBuilder;

    return-object v0
.end method

.method public getLongBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_longBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$LongBuilder;

    return-object v0
.end method

.method public getShortBuilder()Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;-><init>()V

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ArrayBuilders;->_shortBuilder:Lcom/fasterxml/jackson/databind/util/ArrayBuilders$ShortBuilder;

    return-object v0
.end method
