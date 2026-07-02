.class public final Lcom/audible/mobile/util/ErrorUtils;
.super Ljava/lang/Object;
.source "ErrorUtils.java"


# static fields
.field private static final NEWLINE:Ljava/lang/String; = "\n"


# direct methods
.method public static getCurrentStackTrace()Ljava/lang/String;
    .locals 1

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 24
    invoke-static {v0}, Lcom/audible/mobile/util/ErrorUtils;->getStringForStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExceptionStackTrace(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 35
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Lcom/audible/mobile/util/ErrorUtils;->getStringForStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static getStringForStackTrace([Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p0, :cond_1

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p0, v3

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    const-string v0, "\n"

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
