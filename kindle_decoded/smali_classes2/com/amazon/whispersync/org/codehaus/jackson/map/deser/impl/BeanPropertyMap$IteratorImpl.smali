.class final Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;
.super Ljava/lang/Object;
.source "BeanPropertyMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "IteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;",
        ">;"
    }
.end annotation


# instance fields
.field private final _buckets:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private _currentBucket:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

.field private _nextBucketIndex:I


# direct methods
.method public constructor <init>([Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;)V
    .locals 3

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 221
    array-length p1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    add-int/lit8 v2, v0, 0x1

    aget-object v0, v1, v0

    if-eqz v0, :cond_0

    .line 224
    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    move v0, v2

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    .line 228
    :cond_1
    :goto_1
    iput v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;
    .locals 5

    .line 239
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    if-eqz v0, :cond_1

    .line 244
    iget-object v1, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->next:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    :goto_0
    if-nez v1, :cond_0

    .line 245
    iget v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    iget-object v3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_buckets:[Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    add-int/lit8 v1, v2, 0x1

    .line 246
    iput v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_nextBucketIndex:I

    aget-object v1, v3, v2

    goto :goto_0

    .line 248
    :cond_0
    iput-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->_currentBucket:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;

    .line 249
    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$Bucket;->value:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    return-object v0

    .line 241
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 200
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/impl/BeanPropertyMap$IteratorImpl;->next()Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/SettableBeanProperty;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 254
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
