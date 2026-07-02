.class public final Lcom/amazon/kindle/cms/internal/Systrace;
.super Ljava/lang/Object;
.source "Systrace.java"


# static fields
.field private static available:Z = false

.field private static enabled:Z = false

.field private static initialized:Z = false

.field private static traceBeginMethod:Ljava/lang/reflect/Method;

.field private static traceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static traceEndMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isAvailable()Z
    .locals 6

    .line 107
    sget-boolean v0, Lcom/amazon/kindle/cms/internal/Systrace;->initialized:Z

    if-eqz v0, :cond_0

    .line 109
    sget-boolean v0, Lcom/amazon/kindle/cms/internal/Systrace;->available:Z

    return v0

    .line 112
    :cond_0
    const-class v0, Lcom/amazon/kindle/cms/internal/Systrace;

    monitor-enter v0

    .line 115
    :try_start_0
    sget-boolean v1, Lcom/amazon/kindle/cms/internal/Systrace;->initialized:Z

    if-eqz v1, :cond_1

    .line 117
    sget-boolean v1, Lcom/amazon/kindle/cms/internal/Systrace;->available:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_1
    const-string v3, "android.os.Trace"

    .line 123
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/amazon/kindle/cms/internal/Systrace;->traceClass:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    .line 126
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    .line 127
    sget-object v4, Lcom/amazon/kindle/cms/internal/Systrace;->traceClass:Ljava/lang/Class;

    const-string/jumbo v5, "traceBegin"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/amazon/kindle/cms/internal/Systrace;->traceBeginMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Class;

    .line 130
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    .line 131
    sget-object v4, Lcom/amazon/kindle/cms/internal/Systrace;->traceClass:Ljava/lang/Class;

    const-string/jumbo v5, "traceEnd"

    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lcom/amazon/kindle/cms/internal/Systrace;->traceEndMethod:Ljava/lang/reflect/Method;

    .line 133
    sput-boolean v2, Lcom/amazon/kindle/cms/internal/Systrace;->available:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 138
    :catch_0
    :try_start_2
    sput-boolean v1, Lcom/amazon/kindle/cms/internal/Systrace;->available:Z

    .line 142
    :goto_0
    sput-boolean v2, Lcom/amazon/kindle/cms/internal/Systrace;->initialized:Z

    .line 144
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    sget-boolean v0, Lcom/amazon/kindle/cms/internal/Systrace;->available:Z

    return v0

    :catchall_0
    move-exception v1

    .line 144
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static traceBegin(JLjava/lang/String;)V
    .locals 4

    .line 56
    sget-boolean v0, Lcom/amazon/kindle/cms/internal/Systrace;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 61
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/cms/internal/Systrace;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/cms/internal/Systrace;->traceBeginMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p2, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 69
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "failed to invoke beginTrace for "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public static traceEnd(J)V
    .locals 4

    .line 83
    sget-boolean v0, Lcom/amazon/kindle/cms/internal/Systrace;->enabled:Z

    if-nez v0, :cond_0

    return-void

    .line 88
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/cms/internal/Systrace;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    :try_start_0
    sget-object v0, Lcom/amazon/kindle/cms/internal/Systrace;->traceEndMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
