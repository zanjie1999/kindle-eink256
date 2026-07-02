.class public Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;
.super Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;
.source "AsExternalTypeDeserializer.java"


# instance fields
.field protected final _typePropertyName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;",
            "Lcom/amazon/org/codehaus/jackson/map/BeanProperty;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsArrayTypeDeserializer;-><init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;Ljava/lang/Class;)V

    .line 27
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/AsExternalTypeDeserializer;->_typePropertyName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;->EXTERNAL_PROPERTY:Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;

    return-object v0
.end method
