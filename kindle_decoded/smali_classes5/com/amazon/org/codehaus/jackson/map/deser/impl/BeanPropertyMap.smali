.class public final Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;,
        Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private final _hashMask:I

.field private final _size:I


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    iput v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_size:I

    .line 29
    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->findSize(I)I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 30
    iput v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    .line 31
    new-array v0, v0, [Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 32
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    .line 33
    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    iget v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v3, v4

    .line 35
    new-instance v4, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v5, v0, v3

    invoke-direct {v4, v5, v2, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    aput-object v4, v0, v3

    goto :goto_0

    .line 37
    :cond_0
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    return-void
.end method

.method private _findWithEquals(Ljava/lang/String;I)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object p2, v0, p2

    :goto_0
    if-eqz p2, :cond_1

    .line 172
    iget-object v0, p2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object p1, p2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object p1

    .line 175
    :cond_0
    iget-object p2, p2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static final findSize(I)I
    .locals 1

    const/16 v0, 0x20

    if-gt p0, v0, :cond_0

    add-int/2addr p0, p0

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p0, 0x2

    add-int/2addr p0, v0

    :goto_0
    const/4 v0, 0x2

    :goto_1
    if-ge v0, p0, :cond_1

    add-int/2addr v0, v0

    goto :goto_1

    :cond_1
    return v0
.end method


# virtual methods
.method public allProperties()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    invoke-direct {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;-><init>([Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;)V

    return-object v0
.end method

.method public assignIndexes()V
    .locals 7

    .line 44
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    :goto_1
    if-eqz v4, :cond_0

    .line 46
    iget-object v5, v4, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v3}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->assignIndex(I)V

    .line 47
    iget-object v4, v4, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public find(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 3

    .line 80
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_hashMask:I

    and-int/2addr v0, v1

    .line 81
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 87
    :cond_0
    iget-object v2, v1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 88
    iget-object p1, v1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object p1

    .line 90
    :cond_1
    iget-object v1, v1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v1, :cond_2

    .line 91
    iget-object v2, v1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    if-ne v2, p1, :cond_1

    .line 92
    iget-object p1, v1, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object p1

    .line 96
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_findWithEquals(Ljava/lang/String;I)Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object p1

    return-object p1
.end method

.method public remove(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 9

    .line 143
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v1, v3

    .line 148
    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_1

    if-nez v5, :cond_0

    .line 150
    iget-object v6, v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .line 153
    :cond_0
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    iget-object v7, v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    iget-object v8, v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-direct {v6, v3, v7, v8}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    move-object v3, v6

    .line 148
    :goto_1
    iget-object v2, v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 159
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    aput-object v3, p1, v1

    return-void

    .line 157
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' found, can\'t remove"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replace(Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V
    .locals 9

    .line 106
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;->getName()Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    and-int/2addr v1, v3

    .line 116
    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_0
    if-eqz v2, :cond_1

    if-nez v5, :cond_0

    .line 118
    iget-object v6, v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    .line 121
    :cond_0
    new-instance v6, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    iget-object v7, v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->key:Ljava/lang/String;

    iget-object v8, v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;

    invoke-direct {v6, v3, v7, v8}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    move-object v3, v6

    .line 116
    :goto_1
    iget-object v2, v2, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    .line 131
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_buckets:[Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    new-instance v4, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    invoke-direct {v4, v3, v0, p1}, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;-><init>(Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/map/deser/SettableBeanProperty;)V

    aput-object v4, v2, v1

    return-void

    .line 126
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' found, can\'t replace"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;->_size:I

    return v0
.end method
