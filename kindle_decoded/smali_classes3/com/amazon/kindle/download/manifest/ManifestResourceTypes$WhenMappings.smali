.class public final synthetic Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$WhenMappings;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->values()[Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->DRM_VOUCHER:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->KINDLE_MAIN_BASE:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes$WhenMappings;->$EnumSwitchMapping$0:[I

    sget-object v1, Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;->KINDLE_USER_ANOT:Lcom/amazon/kindle/download/manifest/ManifestResourceTypes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1

    return-void
.end method
