.class public final Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeKey"
.end annotation


# instance fields
.field protected _class:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected _hashCode:I

.field protected _isTyped:Z

.field protected _type:Lcom/amazon/org/codehaus/jackson/type/JavaType;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    const/4 v0, 0x0

    .line 232
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    .line 233
    iput-boolean p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 234
    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)I

    move-result p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 225
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 226
    iput-boolean p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 227
    invoke-static {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method private static final hash(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)I
    .locals 0

    .line 246
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->hashCode()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method

.method private static final hash(Ljava/lang/Class;Z)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)I"
        }
    .end annotation

    .line 238
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    :cond_0
    return p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 294
    :cond_0
    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    .line 295
    iget-boolean v1, p1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    iget-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 296
    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 297
    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 299
    :cond_2
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    iget-object p1, p1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    return v3
.end method

.method public final hashCode()I
    .locals 1

    .line 281
    iget v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    return v0
.end method

.method public resetTyped(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 1

    .line 268
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    const/4 v0, 0x0

    .line 269
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 270
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 271
    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)I

    move-result p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public resetTyped(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 254
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 255
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x1

    .line 256
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 257
    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public resetUntyped(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 1

    .line 275
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    const/4 v0, 0x0

    .line 276
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 278
    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)I

    move-result p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public resetUntyped(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 261
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 262
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 263
    iput-boolean v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    .line 264
    invoke-static {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->hash(Ljava/lang/Class;Z)I

    move-result p1

    iput p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_hashCode:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 284
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    const-string/jumbo v1, "}"

    const-string v2, ", typed? "

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{class: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_class:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 287
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{type: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_type:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;->_isTyped:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
