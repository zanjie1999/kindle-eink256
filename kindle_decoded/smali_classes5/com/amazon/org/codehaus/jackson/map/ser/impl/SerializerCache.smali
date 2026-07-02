.class public final Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;
.super Ljava/lang/Object;
.source "SerializerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;
    }
.end annotation


# instance fields
.field private _readOnlyMap:Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

.field private _sharedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    return-void
.end method


# virtual methods
.method public addAndResolveNonTypedSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 171
    monitor-enter p0

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 174
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 183
    :cond_0
    instance-of p1, p2, Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;

    if-eqz p1, :cond_1

    .line 184
    check-cast p2, Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;

    invoke-interface {p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;->resolve(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    .line 186
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addAndResolveNonTypedSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 158
    :cond_0
    instance-of p1, p2, Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;

    if-eqz p1, :cond_1

    .line 159
    check-cast p2, Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;

    invoke-interface {p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ResolvableSerializer;->resolve(Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V

    .line 161
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTypedSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 126
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addTypedSerializer(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 131
    monitor-enter p0

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 136
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReadOnlyLookupMap()Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;
    .locals 1

    .line 51
    monitor-enter p0

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->from(Ljava/util/HashMap;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_readOnlyMap:Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    .line 56
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;->instance()Lcom/amazon/org/codehaus/jackson/map/ser/impl/ReadOnlyClassToSerializerMap;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public typedValueSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 98
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public typedValueSerializer(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 103
    monitor-enter p0

    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 105
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public untypedValueSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 91
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public untypedValueSerializer(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 79
    monitor-enter p0

    .line 80
    :try_start_0
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache;->_sharedMap:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/SerializerCache$TypeKey;-><init>(Ljava/lang/Class;Z)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 81
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
