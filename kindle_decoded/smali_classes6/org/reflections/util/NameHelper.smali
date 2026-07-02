.class public interface abstract Lorg/reflections/util/NameHelper;
.super Ljava/lang/Object;
.source "NameHelper.java"


# static fields
.field public static final primitiveDescriptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final primitiveNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final primitiveTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "boolean"

    const-string v1, "char"

    const-string v2, "byte"

    const-string v3, "short"

    const-string v4, "int"

    const-string v5, "long"

    const-string v6, "float"

    const-string v7, "double"

    const-string v8, "void"

    .line 24
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/reflections/util/NameHelper;->primitiveNames:Ljava/util/List;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Class;

    .line 25
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/reflections/util/NameHelper;->primitiveTypes:Ljava/util/List;

    const-string v1, "Z"

    const-string v2, "C"

    const-string v3, "B"

    const-string v4, "S"

    const-string v5, "I"

    const-string v6, "J"

    const-string v7, "F"

    const-string v8, "D"

    const-string v9, "V"

    .line 26
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/reflections/util/NameHelper;->primitiveDescriptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs abstract forClass(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public varargs abstract forConstructor(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation
.end method

.method public abstract forElement(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation
.end method

.method public varargs abstract forField(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;
.end method

.method public varargs abstract forMember(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation
.end method

.method public varargs abstract forMethod(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation
.end method

.method public varargs abstract forName(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/ClassLoader;",
            ")TT;"
        }
    .end annotation
.end method

.method public varargs abstract forNames(Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract toName(Ljava/lang/Class;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract toName(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
.end method

.method public abstract toName(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public abstract toName(Ljava/lang/reflect/Field;)Ljava/lang/String;
.end method

.method public abstract toName(Ljava/lang/reflect/Method;)Ljava/lang/String;
.end method

.method public abstract toNames(Ljava/util/Collection;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/reflect/AnnotatedElement;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public varargs abstract toNames([Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
