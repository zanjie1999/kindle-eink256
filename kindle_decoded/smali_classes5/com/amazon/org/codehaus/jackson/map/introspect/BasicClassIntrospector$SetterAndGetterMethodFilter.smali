.class public final Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterAndGetterMethodFilter;
.super Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;
.source "BasicClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetterAndGetterMethodFilter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 3

    .line 349
    invoke-super {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/introspect/BasicClassIntrospector$SetterMethodFilter;->includeMethod(Ljava/lang/reflect/Method;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 352
    :cond_0
    invoke-static {p1}, Lcom/amazon/org/codehaus/jackson/map/util/ClassUtil;->hasGetterSignature(Ljava/lang/reflect/Method;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 356
    :cond_1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    .line 357
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method
