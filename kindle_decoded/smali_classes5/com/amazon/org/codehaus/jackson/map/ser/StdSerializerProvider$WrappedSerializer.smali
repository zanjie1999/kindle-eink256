.class final Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
.source "StdSerializerProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WrappedSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final _typeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 826
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;-><init>()V

    .line 827
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;->_typeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    .line 828
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    return-void
.end method


# virtual methods
.method public handledType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 850
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public serialize(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 835
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;->_typeSerializer:Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method

.method public serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 846
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializerProvider$WrappedSerializer;->_serializer:Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;->serializeWithType(Ljava/lang/Object;Lcom/amazon/org/codehaus/jackson/JsonGenerator;Lcom/amazon/org/codehaus/jackson/map/SerializerProvider;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;)V

    return-void
.end method
