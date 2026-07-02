.class public final Lcom/amazon/identity/auth/device/hy;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.hy"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    .line 163
    :cond_0
    array-length v1, p0

    const/16 v2, 0x2710

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v1, v2, :cond_1

    .line 165
    sget-object p1, Lcom/amazon/identity/auth/device/hy;->TAG:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, v4, [Ljava/lang/Object;

    array-length p0, p0

    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v3

    const-string p0, "The number of columns %d is too large to be handled. Issue tracked in SSO-160."

    .line 166
    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 165
    invoke-static {p1, p0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 172
    :cond_1
    new-instance v0, Landroid/database/MatrixCursor;

    invoke-direct {v0, p0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 174
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 176
    array-length v2, p0

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 177
    :goto_1
    array-length v6, p0

    if-ge v5, v6, :cond_3

    .line 179
    aget-object v6, p0, v5

    .line 180
    invoke-interface {v1, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 182
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v2, v5

    goto :goto_2

    .line 186
    :cond_2
    sget-object v7, Lcom/amazon/identity/auth/device/hy;->TAG:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v6, v8, v3

    const-string v6, "Column %s not supported"

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v7}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 190
    :cond_3
    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    :goto_3
    return-object v0
.end method

.method public static a([Ljava/lang/String;Ljava/util/Map;)Landroid/database/Cursor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 152
    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hy;->a([Ljava/lang/String;Ljava/util/Collection;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 108
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/ec;Landroid/net/Uri;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/auth/device/framework/RemoteMAPException;
        }
    .end annotation

    .line 78
    new-instance v0, Lcom/amazon/identity/auth/device/hy$1;

    invoke-direct {v0, p1, p2}, Lcom/amazon/identity/auth/device/hy$1;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/amazon/identity/auth/device/ec;->a(Landroid/net/Uri;Lcom/amazon/identity/auth/device/dj;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 215
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x1

    if-lez p3, :cond_0

    return p4

    :cond_0
    const/4 p3, 0x0

    .line 221
    invoke-virtual {p0, p1, p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 p2, 0x0

    cmp-long v1, p0, p2

    if-ltz v1, :cond_1

    return p4

    :cond_1
    return v0

    .line 228
    :catch_0
    sget-object p0, Lcom/amazon/identity/auth/device/hy;->TAG:Ljava/lang/String;

    const-string p1, "Error inserting into database in ifCannotUpdateThenInsert"

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    sget-object p0, Lcom/amazon/identity/auth/device/hy;->TAG:Ljava/lang/String;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/il;->dm(Ljava/lang/String;)V

    return v0
.end method

.method public static ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "%s.%s"

    .line 198
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 0

    .line 44
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 46
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 118
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_0
    :try_start_0
    invoke-static {p0, p2}, Lcom/amazon/identity/auth/device/hy;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 131
    throw p1
.end method

.method public static b(Landroid/database/Cursor;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method public static c(Landroid/database/Cursor;Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 51
    new-instance v0, Ljava/util/Date;

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static d(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 3

    .line 56
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hy;->b(Landroid/database/Cursor;Ljava/lang/String;)J

    move-result-wide p0

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 61
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    .line 63
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Landroid/database/Cursor;Ljava/lang/String;)Z
    .locals 0

    .line 68
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 136
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hy;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic h(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/hy;->g(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const/4 p0, 0x2

    aput-object p2, v0, p0

    const-string p0, "%s.%s as %s"

    .line 203
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
