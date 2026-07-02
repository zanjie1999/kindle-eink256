.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;
.super Ljava/lang/Object;
.source "PrimitiveArrayDeserializers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$FloatDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$LongDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ByteDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$CharDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;,
        Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$Base;
    }
.end annotation


# static fields
.field static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;


# instance fields
.field _allDeserializers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->_allDeserializers:Ljava/util/HashMap;

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$BooleanDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 36
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ByteDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ByteDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 37
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$ShortDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 38
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$IntDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 39
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$LongDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$LongDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 41
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$FloatDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$FloatDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 42
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$DoubleDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 44
    const-class v0, Ljava/lang/String;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$StringDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    .line 48
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    new-instance v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$CharDeser;

    invoke-direct {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers$CharDeser;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V

    return-void
.end method

.method private add(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->_allDeserializers:Ljava/util/HashMap;

    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->defaultInstance()Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/type/TypeFactory;->constructType(Ljava/lang/reflect/Type;)Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getAll()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 53
    sget-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;

    iget-object v0, v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/PrimitiveArrayDeserializers;->_allDeserializers:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public deserializeWithType(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/whispersync/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 74
    invoke-virtual {p3, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/TypeDeserializer;->deserializeTypedFromArray(Lcom/amazon/whispersync/org/codehaus/jackson/JsonParser;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
