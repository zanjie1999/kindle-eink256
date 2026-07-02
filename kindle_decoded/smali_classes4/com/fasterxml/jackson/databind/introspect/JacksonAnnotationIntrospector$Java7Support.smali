.class Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$Java7Support;
.super Ljava/lang/Object;
.source "JacksonAnnotationIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Java7Support"
.end annotation


# instance fields
.field private final _bogus:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1232
    const-class v0, Ljava/beans/Transient;

    .line 1233
    const-class v0, Ljava/beans/ConstructorProperties;

    .line 1234
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/JacksonAnnotationIntrospector$Java7Support;->_bogus:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public findConstructorName(Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;)Lcom/fasterxml/jackson/databind/PropertyName;
    .locals 2

    .line 1257
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getOwner()Lcom/fasterxml/jackson/databind/introspect/AnnotatedWithParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1259
    const-class v1, Ljava/beans/ConstructorProperties;

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Ljava/beans/ConstructorProperties;

    if-eqz v0, :cond_0

    .line 1261
    invoke-interface {v0}, Ljava/beans/ConstructorProperties;->value()[Ljava/lang/String;

    move-result-object v0

    .line 1262
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/introspect/AnnotatedParameter;->getIndex()I

    move-result p1

    .line 1263
    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 1264
    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/fasterxml/jackson/databind/PropertyName;->construct(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/PropertyName;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public findTransient(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 1

    .line 1238
    const-class v0, Ljava/beans/Transient;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Ljava/beans/Transient;

    if-eqz p1, :cond_0

    .line 1240
    invoke-interface {p1}, Ljava/beans/Transient;->value()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasCreatorAnnotation(Lcom/fasterxml/jackson/databind/introspect/Annotated;)Ljava/lang/Boolean;
    .locals 1

    .line 1246
    const-class v0, Ljava/beans/ConstructorProperties;

    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/databind/introspect/Annotated;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Ljava/beans/ConstructorProperties;

    if-eqz p1, :cond_0

    .line 1250
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
