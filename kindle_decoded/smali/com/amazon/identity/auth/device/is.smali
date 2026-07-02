.class public final Lcom/amazon/identity/auth/device/is;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final re:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "((.*[^0-9])|(^))([0-9]{4,6})[^0-9].*[a-zA-Z0-9+\\\\/]{11}"

    const/16 v1, 0x20

    .line 22
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/is;->re:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static du(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 39
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 43
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/is;->re:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 46
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v1
.end method
