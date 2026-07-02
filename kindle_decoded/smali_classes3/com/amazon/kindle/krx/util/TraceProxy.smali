.class public Lcom/amazon/kindle/krx/util/TraceProxy;
.super Ljava/lang/Object;
.source "TraceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TraceProxy"

.field private static beginSectionMethod:Ljava/lang/reflect/Method; = null

.field private static endSectionMethod:Ljava/lang/reflect/Method; = null

.field private static isAvailable:Z = false

.field private static isNewApiAvailable:Z

.field private static traceBeginMethod:Ljava/lang/reflect/Method;

.field private static traceEndMethod:Ljava/lang/reflect/Method;

.field private static traceTagAlways:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 43
    const-class v0, Ljava/lang/String;

    const-string v1, "Couldn\'t get access to TRACE_TAG_ALWAYS field, traces won\'t be available"

    const-string v2, "Couldn\'t get access to android.os.Trace class, traces won\'t be available"

    :try_start_0
    const-string v3, "android.os.Trace"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 45
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sput-boolean v4, Lcom/amazon/kindle/krx/util/TraceProxy;->isNewApiAvailable:Z

    if-eqz v4, :cond_1

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v0, v4, v7

    const-string v0, "beginSection"

    .line 49
    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/util/TraceProxy;->beginSectionMethod:Ljava/lang/reflect/Method;

    const-string v0, "endSection"

    new-array v4, v7, [Ljava/lang/Class;

    .line 50
    invoke-virtual {v3, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/util/TraceProxy;->endSectionMethod:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    .line 52
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    aput-object v0, v4, v6

    new-array v0, v6, [Ljava/lang/Class;

    .line 53
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v0, v7

    const-string v5, "traceBegin"

    .line 55
    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/amazon/kindle/krx/util/TraceProxy;->traceBeginMethod:Ljava/lang/reflect/Method;

    const-string v4, "traceEnd"

    .line 56
    invoke-virtual {v3, v4, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/util/TraceProxy;->traceEndMethod:Ljava/lang/reflect/Method;

    const-string v0, "TRACE_TAG_ALWAYS"

    .line 58
    invoke-virtual {v3, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v3

    sput-wide v3, Lcom/amazon/kindle/krx/util/TraceProxy;->traceTagAlways:J

    .line 61
    :goto_1
    sput-boolean v6, Lcom/amazon/kindle/krx/util/TraceProxy;->isAvailable:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 71
    sget-object v1, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v0

    .line 69
    sget-object v2, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v0

    .line 67
    sget-object v2, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v0

    .line 65
    sget-object v1, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t get access to trace method(s), traces won\'t be available"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_4
    move-exception v0

    .line 63
    sget-object v1, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 8

    const-string v0, "Failed to invoke start trace for name: "

    .line 92
    sget-boolean v1, Lcom/amazon/kindle/krx/util/TraceProxy;->isAvailable:Z

    if-eqz v1, :cond_1

    .line 94
    :try_start_0
    sget-boolean v1, Lcom/amazon/kindle/krx/util/TraceProxy;->isNewApiAvailable:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 95
    sget-object v1, Lcom/amazon/kindle/krx/util/TraceProxy;->beginSectionMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v2

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 97
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/util/TraceProxy;->traceBeginMethod:Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-wide v6, Lcom/amazon/kindle/krx/util/TraceProxy;->traceTagAlways:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v2

    aput-object p0, v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 102
    sget-object v2, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 100
    sget-object v2, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public static endSection()V
    .locals 7

    const-string v0, "Failed to invoke end trace"

    .line 116
    sget-boolean v1, Lcom/amazon/kindle/krx/util/TraceProxy;->isAvailable:Z

    if-eqz v1, :cond_1

    .line 118
    :try_start_0
    sget-boolean v1, Lcom/amazon/kindle/krx/util/TraceProxy;->isNewApiAvailable:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 119
    sget-object v1, Lcom/amazon/kindle/krx/util/TraceProxy;->endSectionMethod:Ljava/lang/reflect/Method;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/util/TraceProxy;->traceEndMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget-wide v5, Lcom/amazon/kindle/krx/util/TraceProxy;->traceTagAlways:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 126
    sget-object v2, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    .line 124
    sget-object v2, Lcom/amazon/kindle/krx/util/TraceProxy;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method
