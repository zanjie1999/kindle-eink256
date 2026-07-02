.class public Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "EnumDeserializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FactoryBasedDeserializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field protected final _enumClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final _factory:Ljava/lang/reflect/Method;

.field protected final _inputType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 125
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 126
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_enumClass:Ljava/lang/Class;

    .line 127
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_factory:Ljava/lang/reflect/Method;

    .line 128
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_inputType:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 138
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 139
    :cond_0
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 140
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getValueAsInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    .line 141
    :cond_1
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2

    .line 142
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getValueAsLong()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 147
    :goto_0
    :try_start_0
    iget-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_factory:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_enumClass:Ljava/lang/Class;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 149
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1

    .line 144
    :cond_2
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;->_enumClass:Ljava/lang/Class;

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method
