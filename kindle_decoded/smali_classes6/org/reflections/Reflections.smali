.class public Lorg/reflections/Reflections;
.super Ljava/lang/Object;
.source "Reflections.java"

# interfaces
.implements Lorg/reflections/util/NameHelper;


# static fields
.field public static final log:Lorg/slf4j/Logger;


# instance fields
.field protected final transient configuration:Lorg/reflections/Configuration;

.field protected final store:Lorg/reflections/Store;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 115
    const-class v0, Lorg/reflections/Reflections;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    new-instance v0, Lorg/reflections/util/ConfigurationBuilder;

    invoke-direct {v0}, Lorg/reflections/util/ConfigurationBuilder;-><init>()V

    iput-object v0, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    .line 164
    new-instance v0, Lorg/reflections/Store;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-direct {v0, v1}, Lorg/reflections/Store;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    return-void
.end method

.method public constructor <init>(Lorg/reflections/Configuration;)V
    .locals 2

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    .line 126
    invoke-virtual {p0}, Lorg/reflections/Reflections;->scan()Ljava/util/Map;

    move-result-object v0

    .line 127
    invoke-interface {p1}, Lorg/reflections/Configuration;->shouldExpandSuperTypes()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    sget-object p1, Lorg/reflections/scanners/Scanners;->SubTypes:Lorg/reflections/scanners/Scanners;

    invoke-virtual {p1}, Lorg/reflections/scanners/Scanners;->index()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    sget-object v1, Lorg/reflections/scanners/Scanners;->TypesAnnotated:Lorg/reflections/scanners/Scanners;

    invoke-virtual {v1}, Lorg/reflections/scanners/Scanners;->index()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-virtual {p0, p1, v1}, Lorg/reflections/Reflections;->expandSuperTypes(Ljava/util/Map;Ljava/util/Map;)V

    .line 130
    :cond_0
    new-instance p1, Lorg/reflections/Store;

    invoke-direct {p1, v0}, Lorg/reflections/Store;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    return-void
.end method

.method private doFilter(Lorg/reflections/vfs/Vfs$File;Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/reflections/vfs/Vfs$File;",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 225
    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    .line 226
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 227
    invoke-interface {p2, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-interface {p2, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private expandSupertypes(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/util/function/Predicate;

    .line 335
    invoke-static {p4, v0}, Lorg/reflections/ReflectionUtils;->getAnnotations(Ljava/lang/reflect/AnnotatedElement;[Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v0

    if-eqz p2, :cond_0

    .line 336
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 337
    invoke-virtual {p4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 338
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/annotation/Annotation;

    .line 339
    invoke-interface {v2}, Ljava/lang/annotation/Annotation;->annotationType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 340
    sget-object v3, Lorg/reflections/-$$Lambda$Reflections$A0PbwarXNXZTlPtnf_lPnCb8sCs;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$A0PbwarXNXZTlPtnf_lPnCb8sCs;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 343
    :cond_0
    invoke-static {p4}, Lorg/reflections/ReflectionUtils;->getSuperTypes(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 344
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 346
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 348
    :cond_1
    sget-object v2, Lorg/reflections/-$$Lambda$Reflections$4ErDgXeQLlBsDcMVSzkx2yXoeXU;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$4ErDgXeQLlBsDcMVSzkx2yXoeXU;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 349
    invoke-direct {p0, p1, p2, v1, v0}, Lorg/reflections/Reflections;->expandSupertypes(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private getClassFile(Lorg/reflections/vfs/Vfs$File;)Ljavassist/bytecode/ClassFile;
    .locals 4

    .line 231
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->openInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :try_start_1
    new-instance v1, Ljavassist/bytecode/ClassFile;

    invoke-direct {v1, v0}, Ljavassist/bytecode/ClassFile;-><init>(Ljava/io/DataInputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    :try_start_2
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 231
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 233
    :try_start_4
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 234
    new-instance v1, Lorg/reflections/ReflectionsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not create class object from file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lorg/reflections/ReflectionsException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$expandSupertypes$10(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 340
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$expandSupertypes$11(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 348
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$null$3(Ljava/util/Map$Entry;)Z
    .locals 0

    .line 208
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$scan$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method static synthetic lambda$scan$1(Ljava/lang/String;)Ljava/util/Set;
    .locals 0

    .line 170
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$scan$4(Ljava/util/Map$Entry;)Ljava/util/Map;
    .locals 4

    .line 208
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/reflections/-$$Lambda$Reflections$5CZMe6ygKnOP-xlAD_wkrsmk2vo;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$5CZMe6ygKnOP-xlAD_wkrsmk2vo;

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lorg/reflections/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lorg/reflections/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    sget-object v1, Lorg/reflections/-$$Lambda$UgCymILRvUUeY1aohpGe9b3f1-c;->INSTANCE:Lorg/reflections/-$$Lambda$UgCymILRvUUeY1aohpGe9b3f1-c;

    sget-object v2, Lorg/reflections/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;->INSTANCE:Lorg/reflections/-$$Lambda$etDQhIA8H5hI6BDqsFIFQkLL9Nc;

    .line 212
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/stream/Collectors;->mapping(Ljava/util/function/Function;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v2

    .line 209
    invoke-static {v0, v1, v2}, Ljava/util/stream/Collectors;->groupingBy(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/stream/Collector;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method


# virtual methods
.method public expandSuperTypes(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 321
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 322
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 323
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lorg/reflections/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;->INSTANCE:Lorg/reflections/-$$Lambda$AMboGYEhuVfighAr4ZxypJn5wlE;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v1, "java.lang.Object"

    .line 324
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 325
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 326
    invoke-virtual {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lorg/reflections/util/NameHelper;->forClass(Ljava/lang/String;[Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 328
    invoke-direct {p0, p1, p2, v1, v2}, Lorg/reflections/Reflections;->expandSupertypes(Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
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

.method public get(Lorg/reflections/util/QueryFunction;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/reflections/util/QueryFunction<",
            "Lorg/reflections/Store;",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lorg/reflections/Reflections;->store:Lorg/reflections/Store;

    invoke-interface {p1, v0}, Lorg/reflections/util/QueryFunction;->apply(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getMethodsAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 450
    sget-object v0, Lorg/reflections/scanners/Scanners;->MethodsAnnotated:Lorg/reflections/scanners/Scanners;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/AnnotatedElement;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lorg/reflections/util/QueryBuilder;->with([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    const-class v0, Ljava/lang/reflect/Method;

    invoke-virtual {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/reflections/util/QueryFunction;->as(Ljava/lang/Class;[Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/reflections/Reflections;->get(Lorg/reflections/util/QueryFunction;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getSubTypesOf(Ljava/lang/Class;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+TT;>;>;"
        }
    .end annotation

    .line 375
    sget-object v0, Lorg/reflections/scanners/Scanners;->SubTypes:Lorg/reflections/scanners/Scanners;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/AnnotatedElement;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lorg/reflections/util/QueryBuilder;->of([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    const-class v0, Ljava/lang/Class;

    .line 376
    invoke-virtual {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lorg/reflections/util/QueryFunction;->as(Ljava/lang/Class;[Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    .line 375
    invoke-virtual {p0, p1}, Lorg/reflections/Reflections;->get(Lorg/reflections/util/QueryFunction;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getTypesAnnotatedWith(Ljava/lang/Class;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 386
    sget-object v0, Lorg/reflections/scanners/Scanners;->SubTypes:Lorg/reflections/scanners/Scanners;

    sget-object v1, Lorg/reflections/scanners/Scanners;->TypesAnnotated:Lorg/reflections/scanners/Scanners;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/reflect/AnnotatedElement;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v1, v2}, Lorg/reflections/util/QueryBuilder;->with([Ljava/lang/reflect/AnnotatedElement;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/reflections/util/QueryBuilder;->of(Lorg/reflections/util/QueryFunction;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    invoke-virtual {p0}, Lorg/reflections/Reflections;->loaders()[Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/reflections/util/QueryFunction;->asClass([Ljava/lang/ClassLoader;)Lorg/reflections/util/QueryFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/reflections/Reflections;->get(Lorg/reflections/util/QueryFunction;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$scan$2$Reflections(Ljava/util/Map;Ljava/net/URL;)V
    .locals 12

    const/4 v0, 0x0

    .line 176
    :try_start_0
    invoke-static {p2}, Lorg/reflections/vfs/Vfs;->fromURL(Ljava/net/URL;)Lorg/reflections/vfs/Vfs$Dir;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 177
    :try_start_1
    invoke-interface {p2}, Lorg/reflections/vfs/Vfs$Dir;->getFiles()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/reflections/vfs/Vfs$File;

    .line 178
    iget-object v3, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v3}, Lorg/reflections/Configuration;->getInputsFilter()Ljava/util/function/Predicate;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lorg/reflections/Reflections;->doFilter(Lorg/reflections/vfs/Vfs$File;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 180
    iget-object v3, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v3}, Lorg/reflections/Configuration;->getScanners()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v4, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/reflections/scanners/Scanner;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 182
    :try_start_2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/reflections/-$$Lambda$yDeKMOPYfePCns9s1gxVc_Hh6zI;

    invoke-direct {v6, v5}, Lorg/reflections/-$$Lambda$yDeKMOPYfePCns9s1gxVc_Hh6zI;-><init>(Lorg/reflections/scanners/Scanner;)V

    invoke-direct {p0, v2, v6}, Lorg/reflections/Reflections;->doFilter(Lorg/reflections/vfs/Vfs$File;Ljava/util/function/Predicate;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 183
    invoke-interface {v5, v2}, Lorg/reflections/scanners/Scanner;->scan(Lorg/reflections/vfs/Vfs$File;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    if-nez v4, :cond_2

    .line 185
    invoke-direct {p0, v2}, Lorg/reflections/Reflections;->getClassFile(Lorg/reflections/vfs/Vfs$File;)Ljavassist/bytecode/ClassFile;

    move-result-object v4

    .line 186
    :cond_2
    invoke-interface {v5, v4}, Lorg/reflections/scanners/Scanner;->scan(Ljavassist/bytecode/ClassFile;)Ljava/util/List;

    move-result-object v6

    :cond_3
    if-eqz v6, :cond_1

    .line 188
    invoke-interface {v5}, Lorg/reflections/scanners/Scanner;->index()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 191
    :try_start_3
    sget-object v7, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v7, :cond_1

    sget-object v7, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v8, "could not scan file {} with scanner {}"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-interface {v2}, Lorg/reflections/vfs/Vfs$File;->getRelativePath()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v9, v10

    const/4 v5, 0x2

    aput-object v6, v9, v5

    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_6

    .line 199
    invoke-interface {p2}, Lorg/reflections/vfs/Vfs$Dir;->close()V

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, p2

    goto :goto_3

    :catch_1
    move-exception p1

    move-object v0, p2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 197
    :goto_1
    :try_start_4
    sget-object p2, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz p2, :cond_5

    sget-object p2, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const-string v1, "could not create Vfs.Dir from url. ignoring the exception and continuing"

    invoke-interface {p2, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_5
    if-eqz v0, :cond_6

    .line 199
    invoke-interface {v0}, Lorg/reflections/vfs/Vfs$Dir;->close()V

    :cond_6
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_7

    invoke-interface {v0}, Lorg/reflections/vfs/Vfs$Dir;->close()V

    .line 200
    :cond_7
    throw p1
.end method

.method loaders()[Ljava/lang/ClassLoader;
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v0}, Lorg/reflections/Configuration;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method protected scan()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 169
    iget-object v2, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v2}, Lorg/reflections/Configuration;->getScanners()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lorg/reflections/-$$Lambda$GulD7wALNxeETSvUQhSPaKjmmmg;->INSTANCE:Lorg/reflections/-$$Lambda$GulD7wALNxeETSvUQhSPaKjmmmg;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lorg/reflections/-$$Lambda$Reflections$EjhmeKBg7zzz_64pAN92ne2OOrA;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$EjhmeKBg7zzz_64pAN92ne2OOrA;

    sget-object v4, Lorg/reflections/-$$Lambda$Reflections$stQuIB5kgHoJcl5tsq5JlAk50Qk;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$stQuIB5kgHoJcl5tsq5JlAk50Qk;

    .line 170
    invoke-static {v3, v4}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 171
    iget-object v3, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v3}, Lorg/reflections/Configuration;->getUrls()Ljava/util/Set;

    move-result-object v3

    .line 173
    iget-object v4, p0, Lorg/reflections/Reflections;->configuration:Lorg/reflections/Configuration;

    invoke-interface {v4}, Lorg/reflections/Configuration;->isParallel()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/Stream;->parallel()Ljava/util/stream/BaseStream;

    move-result-object v4

    check-cast v4, Ljava/util/stream/Stream;

    goto :goto_0

    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    :goto_0
    new-instance v5, Lorg/reflections/-$$Lambda$Reflections$Y4GK-Y3_Q2i2N1Zfd-v4FoRPTis;

    invoke-direct {v5, p0, v2}, Lorg/reflections/-$$Lambda$Reflections$Y4GK-Y3_Q2i2N1Zfd-v4FoRPTis;-><init>(Lorg/reflections/Reflections;Ljava/util/Map;)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 205
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v4, Lorg/reflections/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lorg/reflections/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    sget-object v5, Lorg/reflections/-$$Lambda$Reflections$mMl6T14dN23_h77dAkAbCRKXwjo;->INSTANCE:Lorg/reflections/-$$Lambda$Reflections$mMl6T14dN23_h77dAkAbCRKXwjo;

    .line 206
    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 213
    sget-object v4, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    if-eqz v4, :cond_2

    .line 215
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 216
    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v9

    add-int/2addr v6, v9

    int-to-long v9, v7

    .line 217
    invoke-interface {v8}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lorg/reflections/-$$Lambda$tgLjwF-L6JBGAcPE46H7mdByLN4;->INSTANCE:Lorg/reflections/-$$Lambda$tgLjwF-L6JBGAcPE46H7mdByLN4;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/LongStream;->sum()J

    move-result-wide v7

    add-long/2addr v9, v7

    long-to-int v7, v9

    goto :goto_1

    .line 219
    :cond_1
    sget-object v4, Lorg/reflections/Reflections;->log:Lorg/slf4j/Logger;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    sub-long/2addr v9, v0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v8, v5

    const/4 v0, 0x1

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const/4 v0, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v8, v0

    const-string v0, "Reflections took %d ms to scan %d urls, producing %d keys and %d values"

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    :cond_2
    return-object v2
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
