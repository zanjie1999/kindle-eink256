.class public abstract enum Lorg/reflections/scanners/Scanners;
.super Ljava/lang/Enum;
.source "Scanners.java"

# interfaces
.implements Lorg/reflections/scanners/Scanner;
.implements Lorg/reflections/util/QueryBuilder;
.implements Lorg/reflections/util/NameHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/reflections/scanners/Scanners;",
        ">;",
        "Lorg/reflections/scanners/Scanner;",
        "Lorg/reflections/util/QueryBuilder;",
        "Lorg/reflections/util/NameHelper;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/reflections/scanners/Scanners;

.field public static final enum ConstructorsAnnotated:Lorg/reflections/scanners/Scanners;

.field public static final enum ConstructorsParameter:Lorg/reflections/scanners/Scanners;

.field public static final enum ConstructorsSignature:Lorg/reflections/scanners/Scanners;

.field public static final enum FieldsAnnotated:Lorg/reflections/scanners/Scanners;

.field public static final enum MethodsAnnotated:Lorg/reflections/scanners/Scanners;

.field public static final enum MethodsParameter:Lorg/reflections/scanners/Scanners;

.field public static final enum MethodsReturn:Lorg/reflections/scanners/Scanners;

.field public static final enum MethodsSignature:Lorg/reflections/scanners/Scanners;

.field public static final enum Resources:Lorg/reflections/scanners/Scanners;

.field public static final enum SubTypes:Lorg/reflections/scanners/Scanners;

.field public static final enum TypesAnnotated:Lorg/reflections/scanners/Scanners;


# instance fields
.field private resultFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 48
    new-instance v0, Lorg/reflections/scanners/Scanners$1;

    const/4 v1, 0x0

    const-string v2, "SubTypes"

    invoke-direct {v0, v2, v1}, Lorg/reflections/scanners/Scanners$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->SubTypes:Lorg/reflections/scanners/Scanners;

    .line 60
    new-instance v0, Lorg/reflections/scanners/Scanners$2;

    const/4 v2, 0x1

    const-string v3, "TypesAnnotated"

    invoke-direct {v0, v3, v2}, Lorg/reflections/scanners/Scanners$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->TypesAnnotated:Lorg/reflections/scanners/Scanners;

    .line 73
    new-instance v0, Lorg/reflections/scanners/Scanners$3;

    const/4 v3, 0x2

    const-string v4, "MethodsAnnotated"

    invoke-direct {v0, v4, v3}, Lorg/reflections/scanners/Scanners$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->MethodsAnnotated:Lorg/reflections/scanners/Scanners;

    .line 82
    new-instance v0, Lorg/reflections/scanners/Scanners$4;

    const/4 v4, 0x3

    const-string v5, "ConstructorsAnnotated"

    invoke-direct {v0, v5, v4}, Lorg/reflections/scanners/Scanners$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->ConstructorsAnnotated:Lorg/reflections/scanners/Scanners;

    .line 91
    new-instance v0, Lorg/reflections/scanners/Scanners$5;

    const/4 v5, 0x4

    const-string v6, "FieldsAnnotated"

    invoke-direct {v0, v6, v5}, Lorg/reflections/scanners/Scanners$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->FieldsAnnotated:Lorg/reflections/scanners/Scanners;

    .line 100
    new-instance v0, Lorg/reflections/scanners/Scanners$6;

    const/4 v6, 0x5

    const-string v7, "Resources"

    invoke-direct {v0, v7, v6}, Lorg/reflections/scanners/Scanners$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->Resources:Lorg/reflections/scanners/Scanners;

    .line 125
    new-instance v0, Lorg/reflections/scanners/Scanners$7;

    const/4 v7, 0x6

    const-string v8, "MethodsParameter"

    invoke-direct {v0, v8, v7}, Lorg/reflections/scanners/Scanners$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->MethodsParameter:Lorg/reflections/scanners/Scanners;

    .line 137
    new-instance v0, Lorg/reflections/scanners/Scanners$8;

    const/4 v8, 0x7

    const-string v9, "ConstructorsParameter"

    invoke-direct {v0, v9, v8}, Lorg/reflections/scanners/Scanners$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->ConstructorsParameter:Lorg/reflections/scanners/Scanners;

    .line 149
    new-instance v0, Lorg/reflections/scanners/Scanners$9;

    const/16 v9, 0x8

    const-string v10, "MethodsSignature"

    invoke-direct {v0, v10, v9}, Lorg/reflections/scanners/Scanners$9;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->MethodsSignature:Lorg/reflections/scanners/Scanners;

    .line 163
    new-instance v0, Lorg/reflections/scanners/Scanners$10;

    const/16 v10, 0x9

    const-string v11, "ConstructorsSignature"

    invoke-direct {v0, v11, v10}, Lorg/reflections/scanners/Scanners$10;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->ConstructorsSignature:Lorg/reflections/scanners/Scanners;

    .line 177
    new-instance v0, Lorg/reflections/scanners/Scanners$11;

    const/16 v11, 0xa

    const-string v12, "MethodsReturn"

    invoke-direct {v0, v12, v11}, Lorg/reflections/scanners/Scanners$11;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/reflections/scanners/Scanners;->MethodsReturn:Lorg/reflections/scanners/Scanners;

    const/16 v12, 0xb

    new-array v12, v12, [Lorg/reflections/scanners/Scanners;

    .line 41
    sget-object v13, Lorg/reflections/scanners/Scanners;->SubTypes:Lorg/reflections/scanners/Scanners;

    aput-object v13, v12, v1

    sget-object v1, Lorg/reflections/scanners/Scanners;->TypesAnnotated:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v2

    sget-object v1, Lorg/reflections/scanners/Scanners;->MethodsAnnotated:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v3

    sget-object v1, Lorg/reflections/scanners/Scanners;->ConstructorsAnnotated:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v4

    sget-object v1, Lorg/reflections/scanners/Scanners;->FieldsAnnotated:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v5

    sget-object v1, Lorg/reflections/scanners/Scanners;->Resources:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v6

    sget-object v1, Lorg/reflections/scanners/Scanners;->MethodsParameter:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v7

    sget-object v1, Lorg/reflections/scanners/Scanners;->ConstructorsParameter:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v8

    sget-object v1, Lorg/reflections/scanners/Scanners;->MethodsSignature:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v9

    sget-object v1, Lorg/reflections/scanners/Scanners;->ConstructorsSignature:Lorg/reflections/scanners/Scanners;

    aput-object v1, v12, v10

    aput-object v0, v12, v11

    sput-object v12, Lorg/reflections/scanners/Scanners;->$VALUES:[Lorg/reflections/scanners/Scanners;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 185
    sget-object p1, Lorg/reflections/scanners/-$$Lambda$Scanners$G321h0FKYjhbtqUnCsp_9KbgKW0;->INSTANCE:Lorg/reflections/scanners/-$$Lambda$Scanners$G321h0FKYjhbtqUnCsp_9KbgKW0;

    iput-object p1, p0, Lorg/reflections/scanners/Scanners;->resultFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/reflections/scanners/Scanners$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lorg/reflections/scanners/Scanners;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/reflections/scanners/Scanners;
    .locals 1

    .line 41
    const-class v0, Lorg/reflections/scanners/Scanners;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/reflections/scanners/Scanners;

    return-object p0
.end method

.method public static values()[Lorg/reflections/scanners/Scanners;
    .locals 1

    .line 41
    sget-object v0, Lorg/reflections/scanners/Scanners;->$VALUES:[Lorg/reflections/scanners/Scanners;

    invoke-virtual {v0}, [Lorg/reflections/scanners/Scanners;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/reflections/scanners/Scanners;

    return-object v0
.end method


# virtual methods
.method protected acceptResult(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lorg/reflections/scanners/Scanners;->resultFilter:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public synthetic acceptsInput(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/scanners/Scanner$-CC;->$default$acceptsInput(Lorg/reflections/scanners/Scanner;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic entries(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/reflections/scanners/Scanner$-CC;->$default$entries(Lorg/reflections/scanners/Scanner;Ljava/util/Collection;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic entry(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/reflections/scanners/Scanner$-CC;->$default$entry(Lorg/reflections/scanners/Scanner;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map$Entry;

    move-result-object p1

    return-object p1
.end method

.method public filterResultsBy(Ljava/util/function/Predicate;)Lorg/reflections/scanners/Scanners;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/reflections/scanners/Scanners;"
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lorg/reflections/scanners/Scanners;->resultFilter:Ljava/util/function/Predicate;

    return-object p0
.end method

.method public varargs synthetic forClass(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forClass(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forConstructor(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Constructor;
    .locals 0
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

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forConstructor(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1
.end method

.method public synthetic forElement(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lorg/reflections/util/NameHelper$-CC;->$default$forElement(Lorg/reflections/util/NameHelper;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/AnnotatedElement;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forField(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forField(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forMember(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forMember(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Member;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forMethod(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/reflections/ReflectionsException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/reflections/util/NameHelper$-CC;->$default$forMethod(Lorg/reflections/util/NameHelper;Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forName(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lorg/reflections/util/NameHelper$-CC;->$default$forName(Lorg/reflections/util/NameHelper;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic forNames(Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;
    .locals 0
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

    invoke-static {p0, p1, p2, p3}, Lorg/reflections/util/NameHelper$-CC;->$default$forNames(Lorg/reflections/util/NameHelper;Ljava/util/Collection;Ljava/lang/Class;[Ljava/lang/ClassLoader;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public synthetic get(Ljava/lang/String;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryBuilder$-CC;->$default$get(Lorg/reflections/util/QueryBuilder;Ljava/lang/String;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public synthetic getAll(Ljava/util/Collection;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryBuilder$-CC;->$default$getAll(Lorg/reflections/util/QueryBuilder;Ljava/util/Collection;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public index()Ljava/lang/String;
    .locals 1

    .line 189
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$scan$1$Scanners(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 201
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/reflections/scanners/Scanners;->acceptResult(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public synthetic of(Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reflections/util/QueryFunction;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryBuilder$-CC;->$default$of(Lorg/reflections/util/QueryBuilder;Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic of([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryBuilder$-CC;->$default$of(Lorg/reflections/util/QueryBuilder;[Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method

.method public final scan(Ljavassist/bytecode/ClassFile;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    invoke-virtual {p0, p1, v0}, Lorg/reflections/scanners/Scanners;->scan(Ljavassist/bytecode/ClassFile;Ljava/util/List;)V

    .line 201
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lorg/reflections/scanners/-$$Lambda$Scanners$eCCBCaInxYhE3oMzF4EqS3-sfI8;

    invoke-direct {v0, p0}, Lorg/reflections/scanners/-$$Lambda$Scanners$eCCBCaInxYhE3oMzF4EqS3-sfI8;-><init>(Lorg/reflections/scanners/Scanners;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public synthetic scan(Lorg/reflections/vfs/Vfs$File;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reflections/vfs/Vfs$File;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/scanners/Scanner$-CC;->$default$scan(Lorg/reflections/scanners/Scanner;Lorg/reflections/vfs/Vfs$File;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method abstract scan(Ljavassist/bytecode/ClassFile;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/bytecode/ClassFile;",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public synthetic toName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/AnnotatedElement;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/reflect/Constructor;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Constructor;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toName(Ljava/lang/reflect/Method;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toName(Lorg/reflections/util/NameHelper;Ljava/lang/reflect/Method;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public synthetic toNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
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

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toNames(Lorg/reflections/util/NameHelper;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic toNames([Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;
    .locals 0
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

    invoke-static {p0, p1}, Lorg/reflections/util/NameHelper$-CC;->$default$toNames(Lorg/reflections/util/NameHelper;[Ljava/lang/reflect/AnnotatedElement;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public varargs synthetic with([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/reflect/AnnotatedElement;",
            ")",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/reflections/util/QueryBuilder$-CC;->$default$with(Lorg/reflections/util/QueryBuilder;[Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    return-object p1
.end method
