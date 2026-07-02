.class public abstract Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;
.super Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;
.source "BasicSerializerFactory.java"


# static fields
.field protected static final _arraySerializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected static final _concrete:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end field

.field protected static final _concreteLazy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected optionalHandlers:Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    .line 82
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringSerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    .line 84
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v2, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v2, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$BooleanSerializer;-><init>(Z)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntegerSerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntegerSerializer;-><init>()V

    .line 93
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$LongSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$LongSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Short;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$IntLikeSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$FloatSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$DoubleSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;-><init>()V

    .line 110
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v2, Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v2, Ljava/math/BigDecimal;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/DateSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/DateSerializer;

    .line 117
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v2, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v2, Ljava/sql/Timestamp;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/sql/Date;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$SqlDateSerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$SqlDateSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    const-class v1, Ljava/sql/Time;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$SqlTimeSerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdJdkSerializers;->provide()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 125
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 126
    instance-of v3, v2, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v3, :cond_0

    .line 127
    sget-object v3, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    :cond_0
    instance-of v3, v2, Ljava/lang/Class;

    if-eqz v3, :cond_1

    .line 130
    check-cast v2, Ljava/lang/Class;

    .line 131
    sget-object v3, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 133
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error: unrecognized value of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    const-class v1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/TokenBufferSerializer;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    .line 146
    const-class v1, [Z

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$BooleanArraySerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$BooleanArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v1, [B

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ByteArraySerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ByteArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v1, [C

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$CharArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v1, [S

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ShortArraySerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$ShortArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v1, [I

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$IntArraySerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$IntArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v1, [J

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$LongArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v1, [F

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$FloatArraySerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$FloatArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    const-class v1, [D

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$DoubleArraySerializer;

    invoke-direct {v2}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$DoubleArraySerializer;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 173
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/SerializerFactory;-><init>()V

    .line 160
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instance:Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->optionalHandlers:Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    return-void
.end method

.method protected static findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 749
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 750
    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 753
    invoke-interface {p2}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty;->getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    .line 757
    invoke-virtual {p0, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->serializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 733
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 734
    invoke-virtual {v1, p1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    .line 737
    invoke-interface {p2}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty;->getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    .line 741
    invoke-virtual {p0, p1, v2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->serializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static modifySecondaryTypesByAnnotation(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "TT;)TT;"
        }
    .end annotation

    .line 701
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p0

    .line 703
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 704
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "): "

    if-eqz v0, :cond_1

    .line 707
    instance-of v2, p2, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    if-eqz v2, :cond_0

    .line 711
    :try_start_0
    move-object v2, p2

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    invoke-virtual {v2, v0}, Lcom/amazon/org/codehaus/jackson/map/type/MapType;->widenKey(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 713
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to narrow key type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with key-type annotation ("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 708
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal key-type annotation: type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is not a Map type"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 718
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 721
    :try_start_1
    invoke-virtual {p2, p0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->widenContentsBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 723
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to narrow content type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with content-type annotation ("

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    return-object p2
.end method


# virtual methods
.method protected buildArraySerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 621
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 622
    const-class p3, [Ljava/lang/String;

    if-ne p3, p1, :cond_0

    .line 623
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;

    invoke-direct {p1, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdArraySerializers$StringArraySerializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V

    return-object p1

    .line 626
    :cond_0
    sget-object p3, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_arraySerializers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-eqz p1, :cond_1

    return-object p1

    .line 630
    :cond_1
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    move-object v0, p1

    move v2, p5

    move-object v3, p6

    move-object v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/ser/std/ObjectArraySerializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object p1
.end method

.method protected buildCollectionLikeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 454
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object p5

    invoke-interface {p5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/org/codehaus/jackson/map/Serializers;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p6

    move-object v7, p7

    .line 455
    invoke-interface/range {v1 .. v7}, Lcom/amazon/org/codehaus/jackson/map/Serializers;->findCollectionLikeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected buildCollectionSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    .line 477
    const-class v11, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/Serializers;

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    .line 478
    invoke-interface/range {v0 .. v6}, Lcom/amazon/org/codehaus/jackson/map/Serializers;->findCollectionSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 484
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 485
    const-class v1, Ljava/util/EnumSet;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 486
    invoke-virtual/range {p0 .. p7}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildEnumSetSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0

    .line 489
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    move-object v2, p0

    .line 490
    invoke-virtual {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->isIndexedList(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-ne v1, v11, :cond_3

    .line 492
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;

    invoke-direct {v0, v7, v10}, Lcom/amazon/org/codehaus/jackson/map/ser/std/IndexedStringListSerializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0

    .line 494
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0, v8, v9, v7, v10}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->indexedListSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v0

    return-object v0

    :cond_4
    if-ne v1, v11, :cond_5

    .line 498
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;

    invoke-direct {v0, v7, v10}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StringCollectionSerializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object v0

    .line 500
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    invoke-static {v0, v8, v9, v7, v10}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->collectionSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object v0

    return-object v0
.end method

.method public buildContainerSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 404
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v0

    .line 405
    invoke-virtual {p0, p1, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p5, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    if-nez p5, :cond_1

    .line 411
    invoke-virtual {p0, p1, p3, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Z

    move-result p5

    :cond_1
    move v6, p5

    .line 413
    :goto_0
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p5

    invoke-static {p1, p5, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findContentSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p5

    .line 416
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isMapLikeType()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 417
    move-object v3, p2

    check-cast v3, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;

    .line 418
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p2

    invoke-static {p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findKeySerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v7

    .line 419
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;->isTrueMapType()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 420
    check-cast v3, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v8, v0

    move-object v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildMapSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v8, v0

    move-object v9, p5

    .line 423
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildMapLikeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    .line 426
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isCollectionLikeType()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 427
    move-object v3, p2

    check-cast v3, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;

    .line 428
    invoke-virtual {v3}, Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;->isTrueCollectionType()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 429
    check-cast v3, Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v0

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildCollectionSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/CollectionType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    :cond_4
    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v0

    move-object v8, p5

    .line 432
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildCollectionLikeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/CollectionLikeType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    .line 435
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isArrayType()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 436
    move-object v3, p2

    check-cast v3, Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v7, v0

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildArraySerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/ArrayType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method protected buildEnumMapSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 594
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getKeyType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3

    .line 597
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p3

    .line 600
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/amazon/org/codehaus/jackson/map/util/EnumValues;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/org/codehaus/jackson/map/util/EnumValues;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move-object v3, p1

    .line 602
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/EnumMapSerializer;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v1

    move-object v0, p1

    move v2, p5

    move-object v4, p6

    move-object v5, p4

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/org/codehaus/jackson/map/ser/std/EnumMapSerializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/util/EnumValues;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)V

    return-object p1
.end method

.method protected buildEnumSetSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 510
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getContentType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isEnumType()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    .line 515
    :cond_0
    invoke-static {p1, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->enumSetSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1
.end method

.method protected buildIterableSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p5, 0x0

    .line 659
    invoke-virtual {p2, p5}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->containedType(I)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    if-nez p2, :cond_0

    .line 661
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 663
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p5

    .line 664
    invoke-virtual {p0, p1, p3, p5, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Z

    move-result p1

    invoke-static {p2, p1, p5, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->iterableSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object p1

    return-object p1
.end method

.method protected buildIteratorSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    const/4 p5, 0x0

    .line 645
    invoke-virtual {p2, p5}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->containedType(I)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    if-nez p2, :cond_0

    .line 647
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;->unknownType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    .line 649
    :cond_0
    invoke-virtual {p0, p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->createTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    move-result-object p5

    .line 650
    invoke-virtual {p0, p1, p3, p5, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->usesStaticTyping(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Z

    move-result p1

    invoke-static {p2, p1, p5, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdContainerSerializers;->iteratorSerializer(Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/ser/std/ContainerSerializerBase;

    move-result-object p1

    return-object p1
.end method

.method protected buildMapLikeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 545
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/Serializers;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 546
    invoke-interface/range {v2 .. v9}, Lcom/amazon/org/codehaus/jackson/map/Serializers;->findMapLikeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/MapLikeType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected buildMapSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/type/MapType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 567
    invoke-virtual {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->customSerializers()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/amazon/org/codehaus/jackson/map/Serializers;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 568
    invoke-interface/range {v2 .. v9}, Lcom/amazon/org/codehaus/jackson/map/Serializers;->findMapSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/type/MapType;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 574
    :cond_1
    const-class v0, Ljava/util/EnumMap;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 575
    invoke-virtual/range {v0 .. v7}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildEnumMapSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object v0

    return-object v0

    .line 578
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findPropertiesToIgnore(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;

    move-result-object v2

    move-object v3, p2

    move v4, p5

    move-object/from16 v5, p7

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Lcom/amazon/org/codehaus/jackson/map/ser/std/MapSerializer;->construct([Ljava/lang/String;Lcom/amazon/org/codehaus/jackson/type/JavaType;ZLcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;)Lcom/amazon/org/codehaus/jackson/map/ser/std/MapSerializer;

    move-result-object v0

    return-object v0
.end method

.method public abstract createSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation
.end method

.method public createTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;
    .locals 5

    .line 196
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->introspectClassAnnotations(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/BeanDescription;

    move-result-object v0

    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;

    .line 197
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object v0

    .line 198
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v1

    .line 199
    invoke-virtual {v1, p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findTypeResolver(Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 205
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getDefaultTyper(Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;

    move-result-object v2

    move-object v0, v3

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/MapperConfig;->getSubtypeResolver()Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;

    move-result-object v4

    invoke-virtual {v4, v0, p1, v1}, Lcom/amazon/org/codehaus/jackson/map/jsontype/SubtypeResolver;->collectAndResolveSubtypes(Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;Lcom/amazon/org/codehaus/jackson/map/MapperConfig;Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;)Ljava/util/Collection;

    move-result-object v0

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    invoke-interface {v2, p1, p2, v0, p3}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeResolverBuilder;->buildTypeSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Ljava/util/Collection;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;

    move-result-object v3

    :goto_1
    return-object v3
.end method

.method protected abstract customSerializers()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation
.end method

.method public final findSerializerByAddonType(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 339
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    .line 342
    const-class v1, Ljava/util/Iterator;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 343
    invoke-virtual/range {p0 .. p5}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildIteratorSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    .line 345
    :cond_0
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 346
    invoke-virtual/range {p0 .. p5}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->buildIterableSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    .line 348
    :cond_1
    const-class p1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 349
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findSerializerByLookup(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 239
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 241
    sget-object p2, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concrete:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-eqz p2, :cond_0

    return-object p2

    .line 245
    :cond_0
    sget-object p2, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->_concreteLazy:Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    if-eqz p1, :cond_1

    .line 248
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 250
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Failed to instantiate standard serializer (of type "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final findSerializerByPrimaryType(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Z)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Z)",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 270
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p5

    .line 272
    const-class v0, Lcom/amazon/org/codehaus/jackson/map/JsonSerializable;

    invoke-virtual {v0, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    const-class p1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializableWithType;

    invoke-virtual {p1, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 274
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableWithTypeSerializer;

    return-object p1

    .line 276
    :cond_0
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/SerializableSerializer;

    return-object p1

    .line 279
    :cond_1
    invoke-virtual {p3}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->findJsonValueMethod()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 282
    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getAnnotated()Ljava/lang/reflect/Method;

    move-result-object p1

    .line 283
    sget-object p3, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p2, p3}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 284
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 286
    :cond_2
    invoke-virtual {p0, p2, v0, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->findSerializerFromAnnotation(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    .line 287
    new-instance p3, Lcom/amazon/org/codehaus/jackson/map/ser/std/JsonValueSerializer;

    invoke-direct {p3, p1, p2, p4}, Lcom/amazon/org/codehaus/jackson/map/ser/std/JsonValueSerializer;-><init>(Ljava/lang/reflect/Method;Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V

    return-object p3

    .line 291
    :cond_3
    const-class p4, Ljava/net/InetAddress;

    invoke-virtual {p4, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 292
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/InetAddressSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/InetAddressSerializer;

    return-object p1

    .line 295
    :cond_4
    const-class p4, Ljava/util/TimeZone;

    invoke-virtual {p4, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 296
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/TimeZoneSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/TimeZoneSerializer;

    return-object p1

    .line 299
    :cond_5
    const-class p4, Ljava/nio/charset/Charset;

    invoke-virtual {p4, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 300
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;

    return-object p1

    .line 304
    :cond_6
    iget-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->optionalHandlers:Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-virtual {p4, p2, p1}, Lcom/amazon/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->findSerializer(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    if-eqz p1, :cond_7

    return-object p1

    .line 309
    :cond_7
    const-class p1, Ljava/lang/Number;

    invoke-virtual {p1, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 310
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$NumberSerializer;

    return-object p1

    .line 312
    :cond_8
    const-class p1, Ljava/lang/Enum;

    invoke-virtual {p1, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 315
    invoke-static {p5, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/std/EnumSerializer;->construct(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;)Lcom/amazon/org/codehaus/jackson/map/ser/std/EnumSerializer;

    move-result-object p1

    return-object p1

    .line 317
    :cond_9
    const-class p1, Ljava/util/Calendar;

    invoke-virtual {p1, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 318
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/CalendarSerializer;

    return-object p1

    .line 320
    :cond_a
    const-class p1, Ljava/util/Date;

    invoke-virtual {p1, p5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 321
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/ser/std/DateSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/DateSerializer;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method protected findSerializerFromAnnotation(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;
        }
    .end annotation

    .line 366
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializer(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 370
    :cond_0
    instance-of v1, v0, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    if-eqz v1, :cond_2

    .line 371
    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    .line 372
    instance-of p2, v0, Lcom/amazon/org/codehaus/jackson/map/ContextualSerializer;

    if-eqz p2, :cond_1

    .line 373
    check-cast v0, Lcom/amazon/org/codehaus/jackson/map/ContextualSerializer;

    invoke-interface {v0, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/ContextualSerializer;->createContextual(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0

    .line 380
    :cond_2
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 383
    check-cast v0, Ljava/lang/Class;

    .line 384
    const-class v1, Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 387
    invoke-virtual {p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->serializerInstance(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p2

    .line 388
    instance-of v0, p2, Lcom/amazon/org/codehaus/jackson/map/ContextualSerializer;

    if-eqz v0, :cond_3

    .line 389
    check-cast p2, Lcom/amazon/org/codehaus/jackson/map/ContextualSerializer;

    invoke-interface {p2, p1, p3}, Lcom/amazon/org/codehaus/jackson/map/ContextualSerializer;->createContextual(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2

    .line 385
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AnnotationIntrospector returned Class "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; expected Class<JsonSerializer>"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 381
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AnnotationIntrospector returned value of type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "; expected type JsonSerializer or Class<JsonSerializer> instead"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getNullSerializer()Lcom/amazon/org/codehaus/jackson/map/JsonSerializer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 220
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/std/NullSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/std/NullSerializer;

    return-object v0
.end method

.method protected isIndexedList(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 523
    const-class v0, Ljava/util/RandomAccess;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method protected modifyTypeByAnnotation(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            ">(",
            "Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;",
            "TT;)TT;"
        }
    .end annotation

    .line 684
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 687
    :try_start_0
    invoke-virtual {p3, v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->widenBy(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 689
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to widen type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " with concrete-type annotation (value "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "), method \'"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\': "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 692
    :cond_0
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/map/ser/BasicSerializerFactory;->modifySecondaryTypesByAnnotation(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    return-object p1
.end method

.method protected usesStaticTyping(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return v0

    .line 777
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->getAnnotationIntrospector()Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;

    move-result-object p3

    .line 778
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicBeanDescription;->getClassInfo()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedClass;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationTyping(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;)Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    move-result-object p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 780
    sget-object p1, Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->STATIC:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;

    if-ne p2, p1, :cond_2

    return v1

    .line 784
    :cond_1
    sget-object p2, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;->USE_STATIC_TYPING:Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;

    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/map/SerializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/SerializationConfig$Feature;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    if-eqz p4, :cond_4

    .line 792
    invoke-interface {p4}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    .line 793
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->isContainerType()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 794
    invoke-interface {p4}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty;->getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object p2

    invoke-interface {p4}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationContentType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object p2

    if-eqz p2, :cond_3

    return v1

    .line 797
    :cond_3
    instance-of p1, p1, Lcom/amazon/org/codehaus/jackson/map/type/MapType;

    if-eqz p1, :cond_4

    .line 798
    invoke-interface {p4}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty;->getMember()Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMember;

    move-result-object p1

    invoke-interface {p4}, Lcom/amazon/org/codehaus/jackson/map/BeanProperty;->getType()Lcom/amazon/org/codehaus/jackson/type/JavaType;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/AnnotationIntrospector;->findSerializationKeyType(Lcom/amazon/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/org/codehaus/jackson/type/JavaType;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    return v0
.end method
