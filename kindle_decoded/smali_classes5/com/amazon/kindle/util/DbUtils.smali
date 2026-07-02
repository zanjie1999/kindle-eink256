.class public final Lcom/amazon/kindle/util/DbUtils;
.super Ljava/lang/Object;
.source "DbUtils.java"


# direct methods
.method public static booleanToInt(Z)I
    .locals 0

    return p0
.end method

.method public static endTransactionQuietly(Landroid/database/sqlite/SQLiteDatabase;)Z
    .locals 0

    .line 40
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static intToBoolean(I)Z
    .locals 0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
