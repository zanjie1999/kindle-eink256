.class Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;
.super Ljava/lang/Object;
.source "BasicClassIntrospector.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MinimalMethodFilter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector$MinimalMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 2

    .line 264
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 267
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
