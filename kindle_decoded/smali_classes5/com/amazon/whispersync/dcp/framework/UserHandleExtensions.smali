.class public final Lcom/amazon/whispersync/dcp/framework/UserHandleExtensions;
.super Ljava/lang/Object;
.source "UserHandleExtensions.java"


# static fields
.field public static final PER_USER_RANGE:I = 0x186a0

.field public static final USER_ALL:I = -0x1

.field public static final USER_CURRENT:I = -0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserHandle(I)Landroid/os/UserHandle;
    .locals 5

    .line 64
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 81
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/UserHandleExtensions;->handleReflectionException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 77
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/UserHandleExtensions;->handleReflectionException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_2
    move-exception p0

    .line 73
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/UserHandleExtensions;->handleReflectionException(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_3
    move-exception p0

    .line 69
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/UserHandleExtensions;->handleReflectionException(Ljava/lang/Exception;)V

    :goto_0
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static getUserHandleFromUid(I)Landroid/os/UserHandle;
    .locals 1

    const v0, 0x186a0

    .line 34
    div-int/2addr p0, v0

    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/UserHandleExtensions;->getUserHandle(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public static getUserIdFromUid(I)I
    .locals 1

    const v0, 0x186a0

    .line 39
    div-int/2addr p0, v0

    return p0
.end method

.method private static handleReflectionException(Ljava/lang/Exception;)V
    .locals 2

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Failed to construct UserHandle via reflection."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static myUserId()I
    .locals 1

    .line 51
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/UserHandleExtensions;->getUserIdFromUid(I)I

    move-result v0

    return v0
.end method
