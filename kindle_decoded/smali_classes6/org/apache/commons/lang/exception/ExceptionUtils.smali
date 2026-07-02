.class public Lorg/apache/commons/lang/exception/ExceptionUtils;
.super Ljava/lang/Object;
.source "ExceptionUtils.java"


# static fields
.field private static CAUSE_METHOD_NAMES:[Ljava/lang/String;

.field private static final CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

.field private static final THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

.field private static final THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "java.lang.Throwable"

    .line 60
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    const-string v2, "getCause"

    const-string v3, "getNextException"

    const-string v4, "getTargetException"

    const-string v5, "getException"

    const-string v6, "getSourceException"

    const-string v7, "getRootCause"

    const-string v8, "getCausedByException"

    const-string v9, "getNested"

    const-string v10, "getLinkedException"

    const-string v11, "getNestedException"

    const-string v12, "getLinkedCause"

    const-string v13, "getThrowable"

    .line 65
    filled-new-array/range {v2 .. v13}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 93
    :try_start_0
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_0

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_0
    const-string v3, "getCause"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v2, v1

    .line 97
    :goto_1
    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    .line 99
    :try_start_1
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_1

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_2

    :cond_1
    sget-object v2, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_2
    const-string v3, "initCause"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v6, :cond_2

    invoke-static {v0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_3

    :cond_2
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_3
    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 103
    :catch_1
    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_INITCAUSE_METHOD:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 281
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    invoke-static {p0, v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 283
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getCause(Ljava/lang/Throwable;[Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 308
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_4

    if-nez p1, :cond_1

    .line 311
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_0
    sget-object p1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    .line 313
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 315
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 316
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 318
    invoke-static {p0, v2}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v0, :cond_4

    const-string p1, "detail"

    .line 326
    invoke-static {p0, p1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method private static getCauseUsingFieldName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3

    const/4 v0, 0x0

    .line 417
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 424
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    :try_start_1
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    return-object v0
.end method

.method private static getCauseUsingMethodName(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3

    const/4 v0, 0x0

    .line 386
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    .line 393
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.Throwable"

    invoke-static {v1}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 395
    :try_start_1
    sget-object v1, Lorg/apache/commons/lang/ArrayUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    return-object v0
.end method

.method private static getCauseUsingWellKnownTypes(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1

    .line 365
    instance-of v0, p0, Lorg/apache/commons/lang/exception/Nestable;

    if-eqz v0, :cond_0

    .line 366
    check-cast p0, Lorg/apache/commons/lang/exception/Nestable;

    invoke-interface {p0}, Lorg/apache/commons/lang/exception/Nestable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    .line 367
    :cond_0
    instance-of v0, p0, Ljava/sql/SQLException;

    if-eqz v0, :cond_1

    .line 368
    check-cast p0, Ljava/sql/SQLException;

    invoke-virtual {p0}, Ljava/sql/SQLException;->getNextException()Ljava/sql/SQLException;

    move-result-object p0

    return-object p0

    .line 369
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_2

    .line 370
    check-cast p0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getFullStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .line 868
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 869
    new-instance v1, Ljava/io/PrintWriter;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    .line 870
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;

    move-result-object p0

    const/4 v2, 0x0

    .line 871
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 872
    aget-object v3, p0, v2

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 873
    aget-object v3, p0, v2

    invoke-static {v3}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isNestedThrowable(Ljava/lang/Throwable;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 877
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    .line 350
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    .line 351
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    :goto_0
    return-object p0
.end method

.method public static getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;
    .locals 2

    .line 568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-eqz p0, :cond_0

    .line 569
    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 570
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static getThrowables(Ljava/lang/Throwable;)[Ljava/lang/Throwable;
    .locals 1

    .line 544
    invoke-static {p0}, Lorg/apache/commons/lang/exception/ExceptionUtils;->getThrowableList(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p0

    .line 545
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Throwable;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Throwable;

    return-object p0
.end method

.method public static isNestedThrowable(Ljava/lang/Throwable;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 463
    :cond_0
    instance-of v1, p0, Lorg/apache/commons/lang/exception/Nestable;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 465
    :cond_1
    instance-of v1, p0, Ljava/sql/SQLException;

    if-eqz v1, :cond_2

    return v2

    .line 467
    :cond_2
    instance-of v1, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_3

    return v2

    .line 469
    :cond_3
    invoke-static {}, Lorg/apache/commons/lang/exception/ExceptionUtils;->isThrowableNested()Z

    move-result v1

    if-eqz v1, :cond_4

    return v2

    .line 473
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 474
    sget-object v1, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 475
    :try_start_0
    sget-object v3, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    array-length v3, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    .line 477
    :try_start_1
    sget-object v5, Lorg/apache/commons/lang/exception/ExceptionUtils;->CAUSE_METHOD_NAMES:[Ljava/lang/String;

    aget-object v5, v5, v4

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 478
    sget-object v6, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v6, :cond_5

    const-string v6, "java.lang.Throwable"

    invoke-static {v6}, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_1

    :cond_5
    sget-object v6, Lorg/apache/commons/lang/exception/ExceptionUtils;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_1
    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_6

    .line 479
    :try_start_2
    monitor-exit v1

    return v2

    :catch_0
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 487
    :cond_7
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v1, "detail"

    .line 490
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz p0, :cond_8

    return v2

    :catch_1
    :cond_8
    return v0

    :catchall_0
    move-exception p0

    .line 487
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public static isThrowableNested()Z
    .locals 1

    .line 446
    sget-object v0, Lorg/apache/commons/lang/exception/ExceptionUtils;->THROWABLE_CAUSE_METHOD:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
