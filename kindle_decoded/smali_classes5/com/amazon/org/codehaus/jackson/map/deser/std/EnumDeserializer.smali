.class public Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;
.source "EnumDeserializer.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JsonCachable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer<",
        "Ljava/lang/Enum<",
        "*>;>;"
    }
.end annotation


# instance fields
.field protected final _resolver:Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver<",
            "*>;)V"
        }
    .end annotation

    .line 31
    const-class v0, Ljava/lang/Enum;

    invoke-direct {p0, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/StdScalarDeserializer;-><init>(Ljava/lang/Class;)V

    .line 32
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    return-void
.end method

.method public static deserializerForCreator(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;",
            ")",
            "Lcom/amazon/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 46
    const-class v0, Ljava/lang/Long;

    const-class v1, Ljava/lang/Integer;

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getParameterClass(I)Ljava/lang/Class;

    move-result-object v2

    .line 47
    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 49
    :cond_0
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v2, v3, :cond_3

    if-ne v2, v1, :cond_1

    goto :goto_0

    .line 51
    :cond_1
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq v2, v1, :cond_4

    if-ne v2, v0, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Parameter #0 type for factory method ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") not suitable, must be java.lang.String or int/Integer/long/Long"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    move-object v0, v1

    .line 57
    :cond_4
    :goto_1
    sget-object v1, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->CAN_OVERRIDE_ACCESS_MODIFIERS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p0, v1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 58
    invoke-virtual {p2}, Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;->getMember()Ljava/lang/reflect/Member;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V

    .line 60
    :cond_5
    new-instance p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer$FactoryBasedDeserializer;-><init>(Ljava/lang/Class;Lcom/amazon/org/codehaus/jackson/map/introspect/AnnotatedMethod;Ljava/lang/Class;)V

    return-object p0
.end method


# virtual methods
.method public deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/JsonParser;",
            "Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;",
            ")",
            "Ljava/lang/Enum<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 73
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getCurrentToken()Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_STRING:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_4

    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->FIELD_NAME:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lcom/amazon/org/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 89
    sget-object v0, Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;->FAIL_ON_NUMBERS_FOR_ENUMS:Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;

    invoke-virtual {p2, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->isEnabled(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig$Feature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 93
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getIntValue()I

    move-result p1

    .line 94
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;->getEnum(I)Ljava/lang/Enum;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "index value outside legal index range [0.."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v1}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;->lastValidIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->weirdNumberException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    :cond_2
    const-string p1, "Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)"

    .line 90
    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->mappingException(Ljava/lang/Class;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1

    .line 77
    :cond_4
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object p1

    .line 78
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;->findEnum(Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 80
    :cond_5
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->_resolver:Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;

    invoke-virtual {p1}, Lcom/amazon/org/codehaus/jackson/map/util/EnumResolver;->getEnumClass()Ljava/lang/Class;

    move-result-object p1

    const-string/jumbo v0, "value not one of declared Enum instance names"

    invoke-virtual {p2, p1, v0}, Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;->weirdStringException(Ljava/lang/Class;Ljava/lang/String;)Lcom/amazon/org/codehaus/jackson/map/JsonMappingException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonProcessingException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/map/deser/std/EnumDeserializer;->deserialize(Lcom/amazon/org/codehaus/jackson/JsonParser;Lcom/amazon/org/codehaus/jackson/map/DeserializationContext;)Ljava/lang/Enum;

    move-result-object p1

    return-object p1
.end method
