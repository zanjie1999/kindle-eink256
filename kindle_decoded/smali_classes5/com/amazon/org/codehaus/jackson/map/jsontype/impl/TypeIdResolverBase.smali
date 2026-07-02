.class public abstract Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;
.super Ljava/lang/Object;
.source "TypeIdResolverBase.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;


# instance fields
.field protected final _baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

.field protected final _typeFactory:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;


# direct methods
.method protected constructor <init>(Lcom/amazon/org/codehaus/jackson/type/JavaType;Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    .line 20
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_typeFactory:Lcom/amazon/org/codehaus/jackson/map/type/TypeFactory;

    return-void
.end method


# virtual methods
.method public idFromBaseType()Ljava/lang/String;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/jsontype/impl/TypeIdResolverBase;->_baseType:Lcom/amazon/org/codehaus/jackson/type/JavaType;

    invoke-virtual {v0}, Lcom/amazon/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/amazon/org/codehaus/jackson/map/jsontype/TypeIdResolver;->idFromValueAndType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/amazon/org/codehaus/jackson/type/JavaType;)V
    .locals 0

    return-void
.end method
