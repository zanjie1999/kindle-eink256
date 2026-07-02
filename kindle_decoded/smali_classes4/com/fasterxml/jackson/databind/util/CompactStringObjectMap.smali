.class public final Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
.super Ljava/lang/Object;
.source "CompactStringObjectMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final EMPTY:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final _hashArea:[Ljava/lang/Object;

.field private final _hashMask:I

.field private final _spillCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;-><init>(II[Ljava/lang/Object;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->EMPTY:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    return-void
.end method

.method private constructor <init>(II[Ljava/lang/Object;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput p1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashMask:I

    .line 35
    iput p2, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_spillCount:I

    .line 36
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    return-void
.end method

.method private final _find2(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return-object v0

    .line 109
    :cond_0
    iget p3, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashMask:I

    add-int/lit8 p3, p3, 0x1

    shr-int/lit8 p2, p2, 0x1

    add-int/2addr p2, p3

    shl-int/lit8 p2, p2, 0x1

    .line 111
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object v1, v1, p2

    .line 112
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    aget-object p1, p1, p2

    return-object p1

    :cond_1
    if-eqz v1, :cond_4

    shr-int/lit8 p2, p3, 0x1

    add-int/2addr p3, p2

    shl-int/lit8 p2, p3, 0x1

    .line 117
    iget p3, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_spillCount:I

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_4

    .line 118
    iget-object v1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object v1, v1, p2

    if-eq v1, p1, :cond_3

    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x2

    goto :goto_0

    .line 120
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    aget-object p1, p1, p2

    return-object p1

    :cond_4
    return-object v0
.end method

.method public static construct(Ljava/util/Map;)Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;"
        }
    .end annotation

    .line 41
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    sget-object p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->EMPTY:Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    return-object p0

    .line 46
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {v0}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->findSize(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    mul-int/lit8 v3, v2, 0x2

    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 53
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 54
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    and-int/2addr v7, v1

    add-int v8, v7, v7

    .line 60
    aget-object v9, v3, v8

    if-eqz v9, :cond_1

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v0

    shl-int/lit8 v8, v7, 0x1

    .line 63
    aget-object v7, v3, v8

    if-eqz v7, :cond_1

    shl-int/lit8 v7, v2, 0x1

    add-int v8, v7, v4

    add-int/lit8 v4, v4, 0x2

    .line 67
    array-length v7, v3

    if-lt v8, v7, :cond_1

    .line 68
    array-length v7, v3

    add-int/lit8 v7, v7, 0x4

    invoke-static {v3, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    .line 72
    :cond_1
    aput-object v6, v3, v8

    add-int/lit8 v8, v8, 0x1

    .line 73
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v8

    goto :goto_0

    .line 75
    :cond_2
    new-instance p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;

    invoke-direct {p0, v1, v4, v3}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;-><init>(II[Ljava/lang/Object;)V

    return-object p0
.end method

.method private static final findSize(I)I
    .locals 1

    const/4 v0, 0x5

    if-gt p0, v0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const/16 v0, 0xc

    if-gt p0, v0, :cond_1

    const/16 p0, 0x10

    return p0

    :cond_1
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr p0, v0

    const/16 v0, 0x20

    :goto_0
    if-ge v0, p0, :cond_2

    add-int/2addr v0, v0

    goto :goto_0

    :cond_2
    return v0
.end method


# virtual methods
.method public find(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashMask:I

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x1

    .line 97
    iget-object v2, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-eq v2, p1, :cond_1

    .line 98
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0, p1, v0, v2}, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_find2(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    aget-object p1, p1, v1

    return-object p1
.end method

.method public keys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    array-length v0, v0

    .line 129
    new-instance v1, Ljava/util/ArrayList;

    shr-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 131
    iget-object v3, p0, Lcom/fasterxml/jackson/databind/util/CompactStringObjectMap;->_hashArea:[Ljava/lang/Object;

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    .line 133
    check-cast v3, Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_1
    return-object v1
.end method
