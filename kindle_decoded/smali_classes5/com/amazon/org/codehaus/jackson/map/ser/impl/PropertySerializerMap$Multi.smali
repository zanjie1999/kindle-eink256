.class final Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;
.super Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Multi"
.end annotation


# static fields
.field private static final MAX_ENTRIES:I = 0x8


# instance fields
.field private final _entries:[Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;


# direct methods
.method public constructor <init>([Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;)V
    .locals 0

    .line 200
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    .line 225
    new-array v2, v2, [Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    const/4 v3, 0x0

    .line 226
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    invoke-direct {v0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    aput-object v0, v2, v1

    .line 228
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;

    invoke-direct {p1, v2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;-><init>([Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;)V

    return-object p1
.end method

.method public serializerFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 4
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

    .line 207
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 208
    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Multi;->_entries:[Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;

    aget-object v2, v2, v1

    .line 209
    iget-object v3, v2, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->type:Ljava/lang/Class;

    if-ne v3, p1, :cond_0

    .line 210
    iget-object p1, v2, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$TypeAndSerializer;->serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
