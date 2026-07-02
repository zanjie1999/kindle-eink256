.class public final Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;
.super Ljava/lang/Object;
.source "EnumValues.java"


# instance fields
.field private final _values:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "*",
            "Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Enum<",
            "*>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p1}, Ljava/util/EnumMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;->_values:Ljava/util/EnumMap;

    return-void
.end method

.method public static construct(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .line 27
    invoke-static {p0, p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;->constructFromName(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;

    move-result-object p0

    return-object p0
.end method

.method public static constructFromName(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .line 35
    invoke-static {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Enum;

    if-eqz v0, :cond_1

    .line 39
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 40
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 41
    invoke-virtual {p1, v3}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;->findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;

    move-result-object v4

    .line 42
    new-instance v5, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    invoke-direct {v5, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;-><init>(Ljava/util/Map;)V

    return-object p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not determine enum constants for Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static constructFromToString(Ljava/lang/Class;Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;)Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "Ljava/lang/Enum<",
            "*>;>;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;",
            ")",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;"
        }
    .end annotation

    .line 51
    invoke-static {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->findEnumType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Enum;

    if-eqz p1, :cond_1

    .line 55
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 57
    new-instance v3, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;

    invoke-direct {p1, p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;-><init>(Ljava/util/Map;)V

    return-object p1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not determine enum constants for Class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public serializedValueFor(Ljava/lang/Enum;)Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;->_values:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    return-object p1
.end method

.method public valueFor(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;->_values:Ljava/util/EnumMap;

    invoke-virtual {v0, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/io/SerializedString;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/EnumValues;->_values:Ljava/util/EnumMap;

    invoke-virtual {v0}, Ljava/util/EnumMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
