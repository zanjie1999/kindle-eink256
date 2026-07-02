.class public final enum Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;
.super Ljava/lang/Enum;
.source "AssetType.java"

# interfaces
.implements Lcom/amazon/kindle/services/download/AssetType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/download/AssetType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BaseAssetTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;",
        ">;",
        "Lcom/amazon/kindle/services/download/AssetType;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

.field public static final enum ANNOTATION_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

.field public static final enum DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

.field public static final enum LUNA_AUDIO:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

.field public static final enum LUNA_VIDEO:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

.field public static final enum MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

.field public static final enum PAGE_NUMBER_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

.field public static final enum TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 29
    new-instance v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v1, 0x0

    const-string v2, "MAIN_CONTENT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 34
    new-instance v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v2, 0x1

    const-string v3, "TOAD_ASSET"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 38
    new-instance v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v3, 0x2

    const-string v4, "LUNA_VIDEO"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->LUNA_VIDEO:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 42
    new-instance v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v4, 0x3

    const-string v5, "LUNA_AUDIO"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->LUNA_AUDIO:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 47
    new-instance v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v5, 0x4

    const-string v6, "ANNOTATION_SIDECAR"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->ANNOTATION_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 52
    new-instance v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v6, 0x5

    const-string v7, "PAGE_NUMBER_SIDECAR"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->PAGE_NUMBER_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 57
    new-instance v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v7, 0x6

    const-string v8, "DRM_VOUCHER"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 63
    new-instance v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/4 v8, 0x7

    const-string v9, "UNKNOWN"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->UNKNOWN:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    .line 25
    sget-object v10, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->MAIN_CONTENT:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->TOAD_ASSET:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->LUNA_VIDEO:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->LUNA_AUDIO:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->ANNOTATION_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->PAGE_NUMBER_SIDECAR:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->DRM_VOUCHER:Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->$VALUES:[Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->$VALUES:[Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/download/AssetType$BaseAssetTypes;

    return-object v0
.end method


# virtual methods
.method public getSerializedForm()Ljava/lang/String;
    .locals 1

    .line 67
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
