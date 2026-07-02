.class public Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;
.super Ljava/lang/Object;
.source "BasicClassIntrospector.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/MethodFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetterMethodFilter"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector$1;)V
    .locals 0

    .line 280
    invoke-direct {p0}, Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/BasicClassIntrospector$GetterMethodFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public includeMethod(Ljava/lang/reflect/Method;)Z
    .locals 0

    .line 288
    invoke-static {p1}, Lcom/amazon/whispersync/org/codehaus/jackson/map/util/ClassUtil;->hasGetterSignature(Ljava/lang/reflect/Method;)Z

    move-result p1

    return p1
.end method
