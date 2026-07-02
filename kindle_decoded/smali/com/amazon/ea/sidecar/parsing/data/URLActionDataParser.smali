.class public Lcom/amazon/ea/sidecar/parsing/data/URLActionDataParser;
.super Ljava/lang/Object;
.source "URLActionDataParser.java"


# static fields
.field private static final TAG_URL:Ljava/lang/String; = "url"

.field private static final TEXT_TAG_REF_TAG:Ljava/lang/String; = "%{refTag}"


# direct methods
.method public static parse(Lorg/json/JSONObject;)Lcom/amazon/ea/sidecar/def/data/URLActionData;
    .locals 3

    const-string/jumbo v0, "url"

    .line 37
    invoke-static {p0, v0}, Lcom/amazon/ea/sidecar/parsing/ParsingUtil;->getString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "%{refTag}"

    const-string v2, "_a_"

    .line 45
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 48
    sget-object v2, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 52
    :cond_1
    new-instance v0, Lcom/amazon/ea/sidecar/def/data/URLActionData;

    invoke-direct {v0, p0}, Lcom/amazon/ea/sidecar/def/data/URLActionData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
