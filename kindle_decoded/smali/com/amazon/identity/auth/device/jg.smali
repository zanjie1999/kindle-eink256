.class public final Lcom/amazon/identity/auth/device/jg;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static b(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    const-wide/16 v0, 0x18

    mul-long p0, p0, v0

    .line 21
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/jg;->c(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static c(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    const-wide/16 v0, 0x3c

    mul-long p0, p0, v0

    .line 28
    invoke-static {p0, p1, p2}, Lcom/amazon/identity/auth/device/jg;->d(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static d(JLjava/util/concurrent/TimeUnit;)J
    .locals 2

    const-wide/16 v0, 0x3c

    mul-long p0, p0, v0

    .line 35
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static dF(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 49
    invoke-static {p0}, Lcom/amazon/identity/auth/device/jb;->dA(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static h(Ljava/util/Date;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 44
    :cond_0
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
