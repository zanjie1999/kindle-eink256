.class public final Lcom/audible/mobile/catalog/metadata/provider/CatalogMetadataDataSource;
.super Lcom/audible/mobile/sqlite/AbstractDatasource;
.source "CatalogMetadataDataSource.java"


# static fields
.field private static final CURRENT_DATABASE_VERSION:I = 0x8

.field private static final DATABASE_DDL_FILE_NAME:Ljava/lang/String; = "audible-catalog-metadata.ddl"

.field private static final DATABASE_NAME:Ljava/lang/String; = "catalog_metadata.db"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 21
    new-instance v0, Lcom/audible/mobile/resource/AssetInputStreamResource;

    const-string v1, "audible-catalog-metadata.ddl"

    invoke-direct {v0, p1, v1}, Lcom/audible/mobile/resource/AssetInputStreamResource;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "catalog_metadata.db"

    const/16 v2, 0x8

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/audible/mobile/sqlite/AbstractDatasource;-><init>(Landroid/content/Context;Ljava/lang/String;ILcom/audible/mobile/resource/InputStreamResource;)V

    return-void
.end method
