.class public final Lcom/amazon/kedu/flashcards/data/SchemaCompatibilityUtil;
.super Ljava/lang/Object;
.source "SchemaCompatibilityUtil.java"


# static fields
.field private static final EPOCH_MILLISECONDS_THRESHOLD:J = 0x174876e800L

.field private static final JSON_DECKTOPINCORRECTCARD_COMPATIBILITY:Ljava/lang/String; = "topWrong"

.field private static final JSON_DECKTOPINCORRECTFLIPPED_COMPATIBILITY:Ljava/lang/String; = "topWrongFlipped"

.field private static final JSON_QUIZSTATE_CORRECT_COMPATIBILITY:Ljava/lang/String; = "success"

.field private static final JSON_QUIZSTATE_INCORRECT_COMPATIBILITY:Ljava/lang/String; = "fail"

.field private static final MILLIS_TO_SECONDS:J = 0x3e8L


# direct methods
.method public static getCardQuizScore(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "quizState"

    const/4 v1, 0x0

    .line 85
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 88
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "undecided"

    goto :goto_0

    :goto_1
    if-eqz v1, :cond_3

    const-string p0, "success"

    .line 92
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v1, "correct"

    goto :goto_2

    :cond_2
    const-string p0, "fail"

    .line 96
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string v1, "incorrect"
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    :goto_2
    return-object v1
.end method

.method public static getTopIncorrectCardId(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "topWrong"

    const/4 v1, 0x0

    .line 51
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 53
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v1
.end method

.method public static getTopIncorrectFlipped(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string/jumbo v0, "topWrongFlipped"

    const-string v1, ""

    .line 68
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    move-object v1, p0

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v1
.end method

.method public static processEpochToSeconds(J)J
    .locals 3

    const-wide v0, 0x174876e800L

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const-wide/16 v0, 0x3e8

    .line 37
    div-long/2addr p0, v0

    :cond_0
    return-wide p0
.end method
