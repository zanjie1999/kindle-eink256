.class public final Lcom/audible/relationship/db/DbUtils;
.super Ljava/lang/Object;
.source "DbUtils.java"


# direct methods
.method public static closeCursor(Landroid/database/Cursor;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 29
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-void
.end method

.method public static getInt(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    const-string v0, "cursor can\'t be null."

    .line 42
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "columnName can\'t be null."

    .line 43
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 45
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 46
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static getString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "cursor can\'t be null."

    .line 58
    invoke-static {p0, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "columnName can\'t be null."

    .line 59
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 61
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 62
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
