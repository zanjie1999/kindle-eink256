.class public Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;
.super Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory$Config;
.source "BeanDeserializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigImpl"
.end annotation


# static fields
.field protected static final NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

.field protected static final NO_KEY_DESERIALIZERS:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

.field protected static final NO_MODIFIERS:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

.field protected static final NO_VALUE_INSTANTIATORS:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;


# instance fields
.field protected final _abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

.field protected final _additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

.field protected final _additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

.field protected final _modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

.field protected final _valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    .line 47
    sput-object v1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_KEY_DESERIALIZERS:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    new-array v1, v0, [Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 48
    sput-object v1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_MODIFIERS:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    new-array v1, v0, [Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 49
    sput-object v1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    new-array v0, v0, [Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    .line 50
    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_VALUE_INSTANTIATORS:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 99
    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/amazon/org/codehaus/jackson/map/Deserializers;[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-void
.end method

.method protected constructor <init>([Lcom/amazon/org/codehaus/jackson/map/Deserializers;[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory$Config;-><init>()V

    if-nez p1, :cond_0

    .line 112
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory;->access$000()[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    if-nez p2, :cond_1

    .line 114
    sget-object p2, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_KEY_DESERIALIZERS:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    :cond_1
    iput-object p2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    if-nez p3, :cond_2

    .line 116
    sget-object p3, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_MODIFIERS:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    :cond_2
    iput-object p3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    if-nez p4, :cond_3

    .line 117
    sget-object p4, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_ABSTRACT_TYPE_RESOLVERS:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    :cond_3
    iput-object p4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    if-nez p5, :cond_4

    .line 118
    sget-object p5, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->NO_VALUE_INSTANTIATORS:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    :cond_4
    iput-object p5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    return-void
.end method


# virtual methods
.method public abstractTypeResolvers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public deserializerModifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public deserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/Deserializers;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public hasAbstractTypeResolvers()Z
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeserializerModifiers()Z
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeserializers()Z
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasKeyDeserializers()Z
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasValueInstantiators()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keyDeserializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public valueInstantiators()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;",
            ">;"
        }
    .end annotation

    .line 213
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-static {v0}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public withAbstractTypeResolver(Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;)Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6

    if-eqz p1, :cond_0

    .line 160
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v4, p1

    check-cast v4, [Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    .line 161
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/amazon/org/codehaus/jackson/map/Deserializers;[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object p1

    .line 158
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null resolver"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withAdditionalDeserializers(Lcom/amazon/org/codehaus/jackson/map/Deserializers;)Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, [Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    .line 128
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/amazon/org/codehaus/jackson/map/Deserializers;[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object p1

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null Deserializers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withAdditionalKeyDeserializers(Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;)Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, [Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    .line 139
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/amazon/org/codehaus/jackson/map/Deserializers;[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object p1

    .line 136
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null KeyDeserializers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withDeserializerModifier(Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;)Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6

    if-eqz p1, :cond_0

    .line 149
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, [Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    .line 150
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    iget-object v5, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/amazon/org/codehaus/jackson/map/Deserializers;[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object p1

    .line 147
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null modifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withValueInstantiators(Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)Lcom/amazon/org/codehaus/jackson/map/DeserializerFactory$Config;
    .locals 6

    if-eqz p1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_valueInstantiators:[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    invoke-static {v0, p1}, Lcom/amazon/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v5, p1

    check-cast v5, [Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;

    .line 172
    new-instance p1, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalDeserializers:[Lcom/amazon/org/codehaus/jackson/map/Deserializers;

    iget-object v2, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_additionalKeyDeserializers:[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;

    iget-object v3, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;

    iget-object v4, p0, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;->_abstractTypeResolvers:[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerFactory$ConfigImpl;-><init>([Lcom/amazon/org/codehaus/jackson/map/Deserializers;[Lcom/amazon/org/codehaus/jackson/map/KeyDeserializers;[Lcom/amazon/org/codehaus/jackson/map/deser/BeanDeserializerModifier;[Lcom/amazon/org/codehaus/jackson/map/AbstractTypeResolver;[Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;)V

    return-object p1

    .line 169
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null resolver"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
