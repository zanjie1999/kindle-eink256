.class Landroidx/documentfile/provider/DocumentsContractApi19;
.super Ljava/lang/Object;
.source "DocumentsContractApi19.java"


# static fields
.field private static final FLAG_VIRTUAL_DOCUMENT:I = 0x200

.field private static final TAG:Ljava/lang/String; = "DocumentFile"


# direct methods
.method public static canWrite(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x2

    .line 109
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->checkCallingOrSelfUriPermission(Landroid/net/Uri;I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 114
    :cond_0
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "flags"

    .line 115
    invoke-static {p0, p1, v3, v2}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I

    move-result p0

    .line 118
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    :cond_1
    and-int/lit8 p1, p0, 0x4

    const/4 v3, 0x1

    if-eqz p1, :cond_2

    return v3

    :cond_2
    const-string/jumbo p1, "vnd.android.document/directory"

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    and-int/lit8 p1, p0, 0x8

    if-eqz p1, :cond_3

    return v3

    .line 131
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    and-int/2addr p0, v0

    if-eqz p0, :cond_4

    return v3

    :cond_4
    return v2
.end method

.method private static closeQuietly(Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 205
    :try_start_0
    invoke-interface {p0}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 207
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method public static getName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string v0, "_display_name"

    const/4 v1, 0x0

    .line 49
    invoke-static {p0, p1, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "mime_type"

    const/4 v1, 0x0

    .line 54
    invoke-static {p0, p1, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDirectory(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 0

    .line 72
    invoke-static {p0, p1}, Landroidx/documentfile/provider/DocumentsContractApi19;->getRawType(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "vnd.android.document/directory"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static queryForInt(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;I)I
    .locals 2

    int-to-long v0, p3

    .line 179
    invoke-static {p0, p1, p2, v0, v1}, Landroidx/documentfile/provider/DocumentsContractApi19;->queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method private static queryForLong(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;J)J
    .locals 7

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 189
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v6, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 190
    invoke-interface {v6, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    invoke-static {v6}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p0

    :cond_0
    invoke-static {v6}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DocumentFile"

    .line 195
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed query: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    invoke-static {v6}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-wide p3

    :goto_0
    invoke-static {v6}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private static queryForString(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 p0, 0x1

    const/4 v6, 0x0

    :try_start_0
    new-array v2, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p2, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    .line 163
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 164
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {v6, p0}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 165
    invoke-interface {v6, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    invoke-static {v6}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_0
    invoke-static {v6}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DocumentFile"

    .line 170
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed query: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    invoke-static {v6}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p3

    :goto_0
    invoke-static {v6}, Landroidx/documentfile/provider/DocumentsContractApi19;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method
