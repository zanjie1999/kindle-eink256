.class public final enum Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;
.super Ljava/lang/Enum;
.source "ManifestResourceTypes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

.field public static final Companion:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$Companion;

.field public static final enum DRM_VOUCHER:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

.field public static final enum KINDLE_MAIN_BASE:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

.field public static final enum KINDLE_USER_ANOT:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    const/4 v2, 0x0

    const-string v3, "KINDLE_MAIN_BASE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->KINDLE_MAIN_BASE:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    const/4 v2, 0x1

    const-string v3, "KINDLE_MAIN_METADATA"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    const/4 v2, 0x2

    const-string v3, "KINDLE_MAIN_ATTACHABLE"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    const/4 v2, 0x3

    const-string v3, "DRM_VOUCHER"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->DRM_VOUCHER:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    const/4 v2, 0x4

    const-string v3, "KINDLE_USER_ANOT"

    invoke-direct {v1, v3, v2}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->KINDLE_USER_ANOT:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->$VALUES:[Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    new-instance v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->Companion:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;
    .locals 1

    const-class v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->$VALUES:[Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    invoke-virtual {v0}, [Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    return-object v0
.end method


# virtual methods
.method public final toAssetType()Lcom/amazon/kindle/services/download/AssetType;
    .locals 2

    .line 22
    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 26
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    goto :goto_0

    .line 25
    :cond_0
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->ANNOTATION_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    goto :goto_0

    .line 24
    :cond_1
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    goto :goto_0

    .line 23
    :cond_2
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    :goto_0
    return-object v0
.end method
