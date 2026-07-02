.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;
.super Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;
.source "NopAnnotationIntrospector.java"


# static fields
.field public static final instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;->instance:Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/NopAnnotationIntrospector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/AnnotationIntrospector;-><init>()V

    return-void
.end method


# virtual methods
.method public findContentDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializablePropertyName(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationContentType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationKeyType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializationType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findEnumValue(Ljava/lang/Enum;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findGettablePropertyName(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findIgnoreUnknownProperties(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findKeyDeserializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertiesToIgnore(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findPropertyNameForParam(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedParameter;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findRootName(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializablePropertyName(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationPropertyOrder(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)[Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationSortAlphabetically(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedClass;)Ljava/lang/Boolean;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationType(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationTyping(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializationViews(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)[Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSerializer(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/Annotated;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public findSettablePropertyName(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public hasAsValueAnnotation(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public hasIgnoreMarker(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isHandled(Ljava/lang/annotation/Annotation;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isIgnorableConstructor(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedConstructor;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isIgnorableField(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isIgnorableMethod(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
