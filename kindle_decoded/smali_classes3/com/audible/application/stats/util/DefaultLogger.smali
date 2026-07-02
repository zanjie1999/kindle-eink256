.class public Lcom/audible/application/stats/util/DefaultLogger;
.super Ljava/lang/Object;
.source "DefaultLogger.java"

# interfaces
.implements Lcom/audible/application/stats/util/ILogger;


# static fields
.field private static final TAG:Ljava/lang/String; = "Audible"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public varargs d([Ljava/lang/Object;)V
    .locals 4

    .line 29
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 30
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    const-string v2, ", "

    .line 32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v1, 0x1

    .line 35
    array-length v3, p1

    if-ge v2, v3, :cond_1

    const-string v3, "="

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 37
    aget-object v2, p1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 40
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Audible"

    .line 46
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "Audible"

    .line 58
    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "null"

    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Audible"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Audible"

    .line 64
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public pii(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Audible"

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
