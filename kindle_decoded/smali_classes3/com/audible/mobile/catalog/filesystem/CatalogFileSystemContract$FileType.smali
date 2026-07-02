.class public final enum Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;
.super Ljava/lang/Enum;
.source "CatalogFileSystemContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

.field public static final enum AUDIO:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

.field public static final enum AUDIO_SAMPLE:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

.field public static final enum COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

.field public static final enum LIBRARY:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

.field public static final enum POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const/4 v1, 0x0

    const-string v2, "COVER_ART"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    new-instance v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const/4 v2, 0x1

    const-string v3, "AUDIO"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    new-instance v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const/4 v3, 0x2

    const-string v4, "AUDIO_SAMPLE"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO_SAMPLE:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    new-instance v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const/4 v4, 0x3

    const-string v5, "POSITION_SYNC"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    new-instance v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const/4 v5, 0x4

    const-string v6, "LIBRARY"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->LIBRARY:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    .line 11
    sget-object v7, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->COVER_ART:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->AUDIO_SAMPLE:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->POSITION_SYNC:Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->$VALUES:[Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->$VALUES:[Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    invoke-virtual {v0}, [Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/catalog/filesystem/CatalogFileSystemContract$FileType;

    return-object v0
.end method
