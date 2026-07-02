.class public final Lcom/amazon/identity/auth/device/ig;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static dh(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    .line 1023
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/lw;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "amazon.co.jp"

    .line 24
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    sget-object p0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/lw;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string v0, "amazon.cn"

    .line 28
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 30
    sget-object p0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/lw;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2023
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/identity/auth/device/lw;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
