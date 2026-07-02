.class public final Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;
.super Ljava/lang/Object;
.source "FalkorNetworkDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

.field private static isEpisodeInfoErrorDebugEnabled:Z

.field private static isForceShowFaveBottomSheetEnabled:Z

.field private static isInternalServerErrorDebugEnabled:Z

.field private static isPageNotFoundErrorDebugEnabled:Z

.field private static isSMDErrorDebugEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    new-instance v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEpisodeInfoErrorDebugEnabled()Z
    .locals 1

    .line 14
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isEpisodeInfoErrorDebugEnabled:Z

    return v0
.end method

.method public final isForceShowFaveBottomSheetEnabled()Z
    .locals 1

    .line 8
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isForceShowFaveBottomSheetEnabled:Z

    return v0
.end method

.method public final isInternalServerErrorDebugEnabled()Z
    .locals 1

    .line 12
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isInternalServerErrorDebugEnabled:Z

    return v0
.end method

.method public final isPageNotFoundErrorDebugEnabled()Z
    .locals 1

    .line 10
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isPageNotFoundErrorDebugEnabled:Z

    return v0
.end method

.method public final isSMDErrorDebugEnabled()Z
    .locals 1

    .line 16
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isSMDErrorDebugEnabled:Z

    return v0
.end method

.method public final toggleEpisodeInfoErrorDebugButton()V
    .locals 1

    .line 44
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isEpisodeInfoErrorDebugEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isEpisodeInfoErrorDebugEnabled:Z

    return-void
.end method

.method public final toggleForceShowFaveBottomSheetButton()V
    .locals 1

    .line 23
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isForceShowFaveBottomSheetEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isForceShowFaveBottomSheetEnabled:Z

    return-void
.end method

.method public final toggleInternalServerErrorDebugButton()V
    .locals 1

    .line 37
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isInternalServerErrorDebugEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isInternalServerErrorDebugEnabled:Z

    return-void
.end method

.method public final togglePageNotFoundErrorDebugButton()V
    .locals 1

    .line 30
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isPageNotFoundErrorDebugEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isPageNotFoundErrorDebugEnabled:Z

    return-void
.end method

.method public final toggleSMDErrorDebugButton()V
    .locals 1

    .line 51
    sget-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isSMDErrorDebugEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/amazon/falkor/utils/FalkorNetworkDebugUtils;->isSMDErrorDebugEnabled:Z

    return-void
.end method
