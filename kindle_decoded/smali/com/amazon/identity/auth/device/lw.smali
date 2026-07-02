.class public final Lcom/amazon/identity/auth/device/lw;
.super Ljava/lang/Object;
.source "DCP"


# direct methods
.method public static a(Ljava/util/Locale;)Ljava/lang/String;
    .locals 2

    .line 18
    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    const-string v1, "-"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
