.class public Lcom/amazon/identity/auth/device/utils/ReflectionHelper;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;,
        Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final rf:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/en<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private static final rg:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;",
            "Lcom/amazon/identity/auth/device/en<",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->rf:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->rg:Ljava/util/Map;

    .line 66
    const-class v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;
        }
    .end annotation

    .line 228
    :try_start_0
    invoke-virtual {p1, p3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    .line 230
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 246
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    const-string p3, "Cannot get field because of IllegalAccessException"

    invoke-direct {p2, p3, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 242
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    const-string p3, "Cannot get field because of IllegalArgumentException"

    invoke-direct {p2, p3, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 238
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    const-string p3, "Field %s cannot be found"

    invoke-static {p3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 234
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    const-string p3, "Cannot get field because of a security exception"

    invoke-direct {p2, p3, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private varargs a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1252
    :try_start_0
    new-instance v2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;

    invoke-direct {v2, p2, p1, p4}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$a;-><init>(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)V

    .line 1253
    sget-object v3, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->rg:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/en;

    if-nez v3, :cond_0

    .line 1256
    invoke-direct {p0, p2, p1, p4}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 1257
    new-instance v3, Lcom/amazon/identity/auth/device/en;

    invoke-direct {v3, p2}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V

    .line 1258
    sget-object p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->rg:Ljava/util/Map;

    invoke-interface {p2, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    :cond_0
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/reflect/Method;

    if-eqz p2, :cond_1

    .line 192
    invoke-virtual {p2, p3, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 189
    :cond_1
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    const-string p3, "Method %s cannot be found or accessed!"

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p1, p4, v0

    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p2

    .line 208
    sget-object p3, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->TAG:Ljava/lang/String;

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p1, p4, v0

    const-string p1, "Exception thrown while calling method %s"

    invoke-static {p1, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object p4

    invoke-static {p3, p1, p4}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 209
    new-instance p1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    const-string p3, "Exception calling method"

    invoke-direct {p1, p3, p2}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    .line 204
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    const-string p3, "IllegalAccessException calling method"

    invoke-direct {p2, p3, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 200
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    const-string p3, "IllegalArguemntException calling method"

    invoke-direct {p2, p3, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_3
    move-exception p1

    .line 196
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private dw(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 106
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "Failed to locate class named %s. If this is not a Kindle device, you can ignore this warning."

    .line 111
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 113
    sget-object v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private findMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 269
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 281
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->TAG:Ljava/lang/String;

    const-string p2, "IllegalArguemntException calling method"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :catch_1
    sget-object p1, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->TAG:Ljava/lang/String;

    const-string p2, "Method cannot be found. Are you sure it is public?"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 273
    sget-object p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Security Exception! Error: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;
        }
    .end annotation

    .line 150
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public varargs a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p2}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->dv(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 167
    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 162
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Cannot find class "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    sget-object p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->TAG:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    new-instance p2, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;

    invoke-direct {p2, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/utils/ReflectionHelper$CannotCallMethodException;
        }
    .end annotation

    .line 215
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->a(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public dv(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 91
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->rf:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/en;

    if-nez v0, :cond_1

    .line 94
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->dw(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/amazon/identity/auth/device/en;

    invoke-direct {v1, v0}, Lcom/amazon/identity/auth/device/en;-><init>(Ljava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/amazon/identity/auth/device/utils/ReflectionHelper;->rf:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    .line 99
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/en;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method
