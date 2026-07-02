.class public final Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;
.super Ljava/lang/Object;
.source "CatalogFileSystemContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CatalogFiles"
.end annotation


# direct methods
.method public static getContentUri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 1

    .line 75
    sget-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    invoke-virtual {v0, p0}, Lcom/audible/mobile/provider/Authority;->getAuthorityUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    const-string v0, "CATALOG_FILES"

    invoke-static {p0, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method
