.class public final Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;
.super Ljava/lang/Object;
.source "ExceptionsConstuctor.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nExceptionsConstuctor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ExceptionsConstuctor.kt\nkotlinx/coroutines/internal/ExceptionsConstuctorKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,82:1\n72#1:85\n72#1:86\n72#1:87\n72#1:88\n1#2:83\n6486#3:84\n12831#3,3:89\n*E\n*S KotlinDebug\n*F\n+ 1 ExceptionsConstuctor.kt\nkotlinx/coroutines/internal/ExceptionsConstuctorKt\n*L\n56#1:85\n61#1:86\n63#1:87\n66#1:88\n41#1:84\n77#1,3:89\n*E\n"
.end annotation


# static fields
.field private static final cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static final exceptionCtors:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final throwableFields:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    const-class v0, Ljava/lang/Throwable;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->fieldsCountOrDefault(Ljava/lang/Class;I)I

    move-result v0

    sput v0, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->throwableFields:I

    .line 14
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 17
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->exceptionCtors:Ljava/util/WeakHashMap;

    return-void
.end method

.method private static final createConstructor(Ljava/lang/reflect/Constructor;)Lkotlin/jvm/functions/Function1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 52
    const-class v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 53
    array-length v2, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    const/4 v6, 0x2

    if-eq v2, v6, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    aget-object v2, v1, v4

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget-object v0, v1, v5

    const-class v1, Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1;

    invoke-direct {v3, p0}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$1;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_0

    .line 59
    :cond_1
    aget-object v1, v1, v4

    .line 60
    const-class v2, Ljava/lang/Throwable;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$2;

    invoke-direct {v3, p0}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$2;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 87
    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3;

    invoke-direct {v3, p0}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$3;-><init>(Ljava/lang/reflect/Constructor;)V

    goto :goto_0

    .line 88
    :cond_3
    new-instance v3, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4;

    invoke-direct {v3, p0}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$createConstructor$$inlined$safeCtor$4;-><init>(Ljava/lang/reflect/Constructor;)V

    :cond_4
    :goto_0
    return-object v3
.end method

.method private static final fieldsCount(Ljava/lang/Class;I)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 77
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 90
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 77
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr p1, v3

    .line 79
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return p1
.end method

.method static synthetic fieldsCount$default(Ljava/lang/Class;IILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 76
    :cond_0
    invoke-static {p0, p1}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->fieldsCount(Ljava/lang/Class;I)I

    move-result p0

    return p0
.end method

.method private static final fieldsCountOrDefault(Ljava/lang/Class;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)I"
        }
    .end annotation

    .line 74
    invoke-static {p0}, Lkotlin/jvm/JvmClassMappingKt;->getKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->fieldsCount$default(Ljava/lang/Class;IILjava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    :cond_0
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final tryCopyException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Throwable;",
            ">(TE;)TE;"
        }
    .end annotation

    .line 22
    instance-of v0, p0, Lkotlinx/coroutines/CopyableThrowable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 23
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    check-cast p0, Lkotlinx/coroutines/CopyableThrowable;

    invoke-interface {p0}, Lkotlinx/coroutines/CopyableThrowable;->createCopy()Ljava/lang/Throwable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-static {p0}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, p0

    :goto_1
    check-cast v1, Ljava/lang/Throwable;

    return-object v1

    .line 26
    :cond_1
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    :try_start_1
    sget-object v2, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->exceptionCtors:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/jvm/functions/Function1;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz v2, :cond_2

    .line 27
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    return-object p0

    .line 32
    :cond_2
    sget v0, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->throwableFields:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->fieldsCountOrDefault(Ljava/lang/Class;I)I

    move-result v2

    if-eq v0, v2, :cond_7

    .line 33
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v4

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_4

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_2
    sget-object v5, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->exceptionCtors:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    sget-object v6, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$tryCopyException$4$1;->INSTANCE:Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$tryCopyException$4$1;

    invoke-interface {v5, p0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_4
    if-ge v3, v4, :cond_5

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v1

    :catchall_1
    move-exception p0

    :goto_5
    if-ge v3, v4, :cond_6

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    .line 41
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 84
    new-instance v2, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$tryCopyException$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$tryCopyException$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v2, v1

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 43
    invoke-static {v2}, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->createConstructor(Ljava/lang/reflect/Constructor;)Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 47
    :cond_9
    sget-object v0, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->cacheLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getWriteHoldCount()I

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->getReadHoldCount()I

    move-result v5

    goto :goto_6

    :cond_a
    const/4 v5, 0x0

    :goto_6
    const/4 v6, 0x0

    :goto_7
    if-ge v6, v5, :cond_b

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_b
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    :try_start_3
    sget-object v6, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt;->exceptionCtors:Ljava/util/WeakHashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    if-eqz v2, :cond_c

    move-object v8, v2

    goto :goto_8

    :cond_c
    sget-object v8, Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$tryCopyException$5$1;->INSTANCE:Lkotlinx/coroutines/internal/ExceptionsConstuctorKt$tryCopyException$5$1;

    :goto_8
    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_9
    if-ge v3, v5, :cond_d

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_d
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    if-eqz v2, :cond_e

    .line 48
    invoke-interface {v2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ljava/lang/Throwable;

    :cond_e
    return-object v1

    :catchall_2
    move-exception p0

    :goto_a
    if-ge v3, v5, :cond_f

    .line 47
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_f
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p0

    :catchall_3
    move-exception p0

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw p0
.end method
