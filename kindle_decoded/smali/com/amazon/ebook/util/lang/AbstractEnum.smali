.class public abstract Lcom/amazon/ebook/util/lang/AbstractEnum;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static final ALL_COUNTS:Ljava/util/Map;

.field private static final ALL_VALUES_BY_NAME:Ljava/util/Map;

.field private static final ALL_VALUES_BY_ORDINAL:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_VALUES_BY_NAME:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_VALUES_BY_ORDINAL:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_COUNTS:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ebook/util/lang/AbstractEnum;->createNextOrdinal(Ljava/lang/Class;)I

    move-result v0

    iput v0, p0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ordinal:I

    iput-object p1, p0, Lcom/amazon/ebook/util/lang/AbstractEnum;->name:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ebook/util/lang/AbstractEnum;->getValuesByName(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/ebook/util/lang/AbstractEnum;->getValuesByOrdinal(Ljava/lang/Class;)Ljava/util/SortedSet;

    move-result-object p1

    invoke-interface {p1, p0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static checkClassIsEnum(Ljava/lang/Class;)V
    .locals 1

    const-class v0, Lcom/amazon/ebook/util/lang/AbstractEnum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static count(Ljava/lang/Class;)I
    .locals 1

    invoke-static {p0}, Lcom/amazon/ebook/util/lang/AbstractEnum;->checkClassIsEnum(Ljava/lang/Class;)V

    sget-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_COUNTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_COUNTS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static createNextOrdinal(Ljava/lang/Class;)I
    .locals 4

    invoke-static {p0}, Lcom/amazon/ebook/util/lang/AbstractEnum;->count(Ljava/lang/Class;)I

    move-result v0

    sget-object v1, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_COUNTS:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0
.end method

.method private static getValuesByName(Ljava/lang/Class;)Ljava/util/Map;
    .locals 3

    sget-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_VALUES_BY_NAME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_VALUES_BY_NAME:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_VALUES_BY_NAME:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :goto_0
    return-object p0
.end method

.method private static getValuesByOrdinal(Ljava/lang/Class;)Ljava/util/SortedSet;
    .locals 2

    sget-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_VALUES_BY_ORDINAL:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_VALUES_BY_ORDINAL:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/SortedSet;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ALL_VALUES_BY_ORDINAL:Ljava/util/Map;

    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :goto_0
    return-object p0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ordinal:I

    check-cast p1, Lcom/amazon/ebook/util/lang/AbstractEnum;

    iget p1, p1, Lcom/amazon/ebook/util/lang/AbstractEnum;->ordinal:I

    sub-int/2addr v0, p1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/amazon/ebook/util/lang/AbstractEnum;->compareTo(Ljava/lang/Object;)I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lcom/amazon/ebook/util/lang/AbstractEnum;->name:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    mul-int v0, v0, v1

    iget v1, p0, Lcom/amazon/ebook/util/lang/AbstractEnum;->ordinal:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/ebook/util/lang/AbstractEnum;->name:Ljava/lang/String;

    return-object v0
.end method
