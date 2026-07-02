.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;
.super Ljava/lang/Object;
.source "OptionalHandlerFactory.java"


# static fields
.field private static final CLASS_NAME_DOM_DOCUMENT:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final CLASS_NAME_DOM_NODE:Ljava/lang/String; = "org.w3c.dom.Node"

.field private static final DESERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.amazon.whispersync.org.codehaus.jackson.map.ext.CoreXMLDeserializers"

.field private static final DESERIALIZERS_FOR_JODA_DATETIME:Ljava/lang/String; = "com.amazon.whispersync.org.codehaus.jackson.map.ext.JodaDeserializers"

.field private static final DESERIALIZER_FOR_DOM_DOCUMENT:Ljava/lang/String; = "com.amazon.whispersync.org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

.field private static final DESERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.amazon.whispersync.org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

.field private static final PACKAGE_PREFIX_JAVAX_XML:Ljava/lang/String; = "javax.xml."

.field private static final PACKAGE_PREFIX_JODA_DATETIME:Ljava/lang/String; = "org.joda.time."

.field private static final SERIALIZERS_FOR_JAVAX_XML:Ljava/lang/String; = "com.amazon.whispersync.org.codehaus.jackson.map.ext.CoreXMLSerializers"

.field private static final SERIALIZERS_FOR_JODA_DATETIME:Ljava/lang/String; = "com.amazon.whispersync.org.codehaus.jackson.map.ext.JodaSerializers"

.field private static final SERIALIZER_FOR_DOM_NODE:Ljava/lang/String; = "com.amazon.whispersync.org.codehaus.jackson.map.ext.DOMSerializer"

.field public static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_2

    .line 155
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 159
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 154
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 168
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    .line 169
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 170
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 175
    :cond_1
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    .line 176
    invoke-direct {p0, v4, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterface(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 202
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object p1

    .line 203
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    aget-object v4, p1, v2

    .line 204
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_1
    array-length v0, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v4, p1, v2

    .line 210
    invoke-direct {p0, v4, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method private hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 186
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz p1, :cond_3

    .line 193
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasInterfaceStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 192
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private instantiate(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 144
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public findDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/DeserializerProvider;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "org.joda.time."

    .line 99
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const-string p2, "com.amazon.whispersync.org.codehaus.jackson.map.ext.JodaDeserializers"

    goto :goto_1

    :cond_0
    const-string p3, "javax.xml."

    .line 101
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-direct {p0, p1, p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "org.w3c.dom.Node"

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, "com.amazon.whispersync.org.codehaus.jackson.map.ext.DOMDeserializer$DocumentDeserializer"

    .line 105
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-object p1

    .line 106
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "com.amazon.whispersync.org.codehaus.jackson.map.ext.DOMDeserializer$NodeDeserializer"

    .line 107
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer;

    return-object p1

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const-string p2, "com.amazon.whispersync.org.codehaus.jackson.map.ext.CoreXMLDeserializers"

    .line 111
    :goto_1
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_5

    return-object v0

    .line 116
    :cond_5
    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Provider;

    .line 117
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Provider;->provide()Ljava/util/Collection;

    move-result-object p2

    .line 120
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;

    .line 121
    invoke-virtual {v1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v2

    if-ne p1, v2, :cond_6

    return-object v1

    .line 126
    :cond_7
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;

    .line 127
    invoke-virtual {p3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/deser/std/StdDeserializer;->getValueClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    return-object p3

    :cond_9
    return-object v0
.end method

.method public findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;)Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/SerializationConfig;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer<",
            "*>;"
        }
    .end annotation

    .line 54
    invoke-virtual {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;->getRawClass()Ljava/lang/Class;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "org.joda.time."

    .line 58
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p2, "com.amazon.whispersync.org.codehaus.jackson.map.ext.JodaSerializers"

    goto :goto_1

    :cond_0
    const-string v0, "javax.xml."

    .line 60
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-direct {p0, p1, v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->hasSupertypeStartingWith(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "org.w3c.dom.Node"

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->doesImplement(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "com.amazon.whispersync.org.codehaus.jackson.map.ext.DOMSerializer"

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    :cond_2
    return-object v1

    :cond_3
    :goto_0
    const-string p2, "com.amazon.whispersync.org.codehaus.jackson.map.ext.CoreXMLSerializers"

    .line 69
    :goto_1
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/ext/OptionalHandlerFactory;->instantiate(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_4

    return-object v1

    .line 74
    :cond_4
    check-cast p2, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Provider;

    .line 75
    invoke-interface {p2}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Provider;->provide()Ljava/util/Collection;

    move-result-object p2

    .line 78
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 79
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_5

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    .line 84
    :cond_6
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 86
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonSerializer;

    return-object p1

    :cond_8
    return-object v1
.end method
