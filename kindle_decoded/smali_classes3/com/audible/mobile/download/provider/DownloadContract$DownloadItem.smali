.class public final Lcom/audible/mobile/download/provider/DownloadContract$DownloadItem;
.super Ljava/lang/Object;
.source "DownloadContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/download/provider/DownloadContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DownloadItem"
.end annotation


# direct methods
.method public static cursorToRequest(Landroid/database/Cursor;)Lcom/audible/mobile/download/Request;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 83
    :cond_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 100
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v0

    .line 87
    :cond_1
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "ASIN"

    .line 88
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    const-string v1, "OPTIONAL_PAYLOAD"

    .line 89
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CUSTOMER_ID"

    .line 90
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    const-string v3, "CATEGORY_NAME"

    .line 91
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 92
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {v0}, Lcom/audible/mobile/domain/ImmutableAsinImpl;->nullSafeFactory(Ljava/lang/String;)Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    .line 94
    new-instance v4, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Lcom/audible/mobile/domain/ImmutableCustomerIdImpl;-><init>(Ljava/lang/String;)V

    .line 95
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/mobile/download/ContentType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/download/ContentType;

    move-result-object v2

    .line 96
    new-instance v3, Lcom/audible/mobile/download/Request;

    invoke-direct {v3, v2, v4, v0}, Lcom/audible/mobile/download/Request;-><init>(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V

    .line 97
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/audible/mobile/download/Request;->setOptionalPayload(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object v3

    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 101
    throw v0
.end method

.method public static getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .line 63
    sget-object v0, Lcom/audible/mobile/download/provider/DownloadContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    invoke-virtual {v0, p0}, Lcom/audible/mobile/provider/Authority;->getAuthorityUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "downloads"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static requestToContentValues(Lcom/audible/mobile/download/Request;)Landroid/content/ContentValues;
    .locals 3

    .line 106
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/audible/mobile/download/Request;->getContentType()Lcom/audible/mobile/download/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CATEGORY_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "SUBMITTED_DATE"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 110
    invoke-virtual {p0}, Lcom/audible/mobile/download/Request;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    const-string v2, "ASIN"

    if-nez v1, :cond_0

    .line 111
    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/audible/mobile/download/Request;->getAsin()Lcom/audible/mobile/domain/Asin;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/audible/mobile/download/Request;->getOptionalPayload()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPTIONAL_PAYLOAD"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/audible/mobile/download/Request;->getCustomerId()Lcom/audible/mobile/domain/CustomerId;

    move-result-object p0

    invoke-interface {p0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CUSTOMER_ID"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
