.class public Lcom/audible/mobile/catalog/filesystem/provider/CatalogFileSystemDatasource;
.super Lcom/audible/mobile/sqlite/AbstractDatasource;
.source "CatalogFileSystemDatasource.java"


# static fields
.field private static final CONST_DATABASE_NAME:Ljava/lang/String; = "catalog_file_system"

.field private static final CONST_DATABASE_NAME_DDL_FILE:Ljava/lang/String; = "catalog_file_system.ddl"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 19
    new-instance v0, Lcom/audible/mobile/resource/AssetInputStreamResource;

    const-string v1, "catalog_file_system.ddl"

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/resource/AssetInputStreamResource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "catalog_file_system"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/audible/mobile/sqlite/AbstractDatasource;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/audible/mobile/resource/InputStreamResource;)V

    return-void
.end method
