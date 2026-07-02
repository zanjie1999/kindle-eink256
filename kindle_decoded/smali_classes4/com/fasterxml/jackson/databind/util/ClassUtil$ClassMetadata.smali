.class final Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ClassUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ClassMetadata"
.end annotation


# static fields
.field private static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

.field private static final NO_CTORS:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;


# instance fields
.field private _annotations:[Ljava/lang/annotation/Annotation;

.field private _constructors:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

.field private _fields:[Ljava/lang/reflect/Field;

.field private final _forClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private _genericInterfaces:[Ljava/lang/reflect/Type;

.field private _hasEnclosingMethod:Ljava/lang/Boolean;

.field private _interfaces:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private _methods:[Ljava/lang/reflect/Method;

.field private _packageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/annotation/Annotation;

    .line 996
    sput-object v1, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    new-array v0, v0, [Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 997
    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->NO_CTORS:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    return-void
.end method

.method private isObjectOrPrimitive()Z
    .locals 2

    .line 1115
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-static {}, Lcom/fasterxml/jackson/databind/util/ClassUtil;->access$100()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getConstructors()[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;
    .locals 6

    .line 1064
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_constructors:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    if-nez v0, :cond_3

    .line 1068
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->isObjectOrPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 1071
    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1072
    array-length v1, v0

    .line 1073
    new-array v2, v1, [Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1075
    new-instance v4, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    aget-object v5, v0, v3

    invoke-direct {v4, v5}, Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;-><init>(Ljava/lang/reflect/Constructor;)V

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_2

    .line 1069
    :cond_2
    :goto_1
    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->NO_CTORS:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    .line 1078
    :goto_2
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_constructors:[Lcom/fasterxml/jackson/databind/util/ClassUtil$Ctor;

    :cond_3
    return-object v0
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    .line 1053
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_annotations:[Ljava/lang/annotation/Annotation;

    if-nez v0, :cond_1

    .line 1055
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->isObjectOrPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 1056
    :goto_0
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_annotations:[Ljava/lang/annotation/Annotation;

    :cond_1
    return-object v0
.end method

.method public getDeclaredFields()[Ljava/lang/reflect/Field;
    .locals 1

    .line 1085
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_fields:[Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 1087
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1088
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_fields:[Ljava/lang/reflect/Field;

    :cond_0
    return-object v0
.end method

.method public getDeclaredMethods()[Ljava/lang/reflect/Method;
    .locals 1

    .line 1095
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_methods:[Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    .line 1097
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1098
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_methods:[Ljava/lang/reflect/Method;

    :cond_0
    return-object v0
.end method

.method public getGenericInterfaces()[Ljava/lang/reflect/Type;
    .locals 1

    .line 1042
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_genericInterfaces:[Ljava/lang/reflect/Type;

    if-nez v0, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1045
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_genericInterfaces:[Ljava/lang/reflect/Type;

    :cond_0
    return-object v0
.end method

.method public getInterfaces()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1032
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_interfaces:[Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 1034
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v0

    .line 1035
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_interfaces:[Ljava/lang/Class;

    :cond_0
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 3

    .line 1017
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_packageName:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    if-nez v0, :cond_2

    .line 1019
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 1020
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    move-object v0, v2

    .line 1024
    :cond_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_packageName:Ljava/lang/String;

    :cond_2
    if-ne v0, v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public hasEnclosingMethod()Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_hasEnclosingMethod:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 1108
    invoke-direct {p0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->isObjectOrPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_forClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1109
    :goto_1
    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$ClassMetadata;->_hasEnclosingMethod:Ljava/lang/Boolean;

    .line 1111
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
