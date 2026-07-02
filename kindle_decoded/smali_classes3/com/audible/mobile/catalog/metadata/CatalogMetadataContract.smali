.class public final Lcom/audible/mobile/catalog/metadata/CatalogMetadataContract;
.super Ljava/lang/Object;
.source "CatalogMetadataContract.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/catalog/metadata/CatalogMetadataContract$Chapters;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Lcom/audible/mobile/provider/Authority;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/audible/mobile/provider/Authority;

    const-string v1, "catalog.metadata.provider"

    invoke-direct {v0, v1}, Lcom/audible/mobile/provider/Authority;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/catalog/metadata/CatalogMetadataContract;->AUTHORITY:Lcom/audible/mobile/provider/Authority;

    return-void
.end method
