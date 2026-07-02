.class public Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract;
.super Ljava/lang/Object;
.source "CatalogFileSystemContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$CatalogFiles;,
        Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Lcom/audible/mobile/provider/Authority;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/audible/mobile/provider/Authority;

    const-string v1, "catalog.filesystem.provider"

    invoke-direct {v0, v1}, Lcom/audible/mobile/provider/Authority;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    return-void
.end method
