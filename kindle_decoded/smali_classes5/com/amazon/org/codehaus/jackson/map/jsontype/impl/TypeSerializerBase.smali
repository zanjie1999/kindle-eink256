.class public abstract Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;
.super Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;
.source "TypeSerializerBase.java"


# instance fields
.field protected final _idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

.field protected final _property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;Lcom/amazon/org/codehaus/jackson/map/BeanProperty;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/TypeSerializer;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    .line 20
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_property:Lcom/amazon/org/codehaus/jackson/map/BeanProperty;

    return-void
.end method


# virtual methods
.method public getPropertyName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTypeIdResolver()Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeSerializerBase;->_idResolver:Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;

    return-object v0
.end method

.method public abstract getTypeInclusion()Lcom/amazon/org/codehaus/jackson/annotate/JsonTypeInfo$As;
.end method
