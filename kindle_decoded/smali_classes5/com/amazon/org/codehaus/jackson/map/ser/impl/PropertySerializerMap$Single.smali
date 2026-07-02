.class final Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;
.super Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.source "PropertySerializerMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Single"
.end annotation


# instance fields
.field private final _serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final _type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
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

    .line 130
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;-><init>()V

    .line 131
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    .line 132
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method


# virtual methods
.method public newWith(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap;
    .locals 3
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

    .line 146
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Double;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0
.end method

.method public serializerFor(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
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

    .line 138
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_type:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/impl/PropertySerializerMap$Single;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
