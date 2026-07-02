.class public Lcom/audible/mobile/download/provider/DownloadDataSource;
.super Lcom/audible/mobile/sqlite/AbstractDatasource;
.source "DownloadDataSource.java"


# static fields
.field private static final CURRENT_DATABASE_VERSION:I = 0x1

.field private static final DATABASE_NAME:Ljava/lang/String; = "audible-download-cache.db"

.field private static final DDL_FILE_NAME:Ljava/lang/String; = "audible-download-cache.ddl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 21
    new-instance v0, Lcom/audible/mobile/resource/AssetInputStreamResource;

    const-string v1, "audible-download-cache.ddl"

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/resource/AssetInputStreamResource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "audible-download-cache.db"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/audible/mobile/sqlite/AbstractDatasource;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/audible/mobile/resource/InputStreamResource;)V

    return-void
.end method
