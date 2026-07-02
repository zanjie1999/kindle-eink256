.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;
.source "BeanSerializerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigImpl"
.end annotation


# static fields
.field protected static final NO_MODIFIERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

.field protected static final NO_SERIALIZERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;


# instance fields
.field protected final _additionalKeySerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

.field protected final _additionalSerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

.field protected final _modifiers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    .line 83
    sput-object v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_SERIALIZERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    new-array v0, v0, [Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 85
    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_MODIFIERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, v0, v0, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    return-void
.end method

.method protected constructor <init>([Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;-><init>()V

    if-nez p1, :cond_0

    .line 114
    sget-object p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_SERIALIZERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    :cond_0
    iput-object p1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    if-nez p2, :cond_1

    .line 116
    sget-object p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_SERIALIZERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    :cond_1
    iput-object p2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    if-nez p3, :cond_2

    .line 118
    sget-object p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->NO_MODIFIERS:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    :cond_2
    iput-object p3, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    return-void
.end method


# virtual methods
.method public hasKeySerializers()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSerializerModifiers()Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSerializers()Z
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySerializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public serializerModifiers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public serializers()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    invoke-static {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;->arrayAsIterable([Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public withAdditionalKeySerializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;
    .locals 3

    if-eqz p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    .line 138
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    return-object v0

    .line 135
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null Serializers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withAdditionalSerializers(Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;
    .locals 3

    if-eqz p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    .line 128
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-direct {v0, p1, v1, v2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    return-object v0

    .line 125
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null Serializers"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withSerializerModifier(Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializerFactory$Config;
    .locals 3

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_modifiers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ArrayBuilders;->insertInListNoDup([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;

    .line 148
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalSerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    iget-object v2, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;->_additionalKeySerializers:[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;

    invoke-direct {v0, v1, v2, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerFactory$ConfigImpl;-><init>([Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/Serializers;[Lcom/amazon/whispersync/org/codehaus/jackson/map/ser/BeanSerializerModifier;)V

    return-object v0

    .line 145
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can not pass null modifier"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
