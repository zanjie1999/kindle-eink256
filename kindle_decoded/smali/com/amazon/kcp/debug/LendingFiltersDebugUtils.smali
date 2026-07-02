.class public final Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;
.super Ljava/lang/Object;
.source "LendingFiltersDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;

.field private static isKindleOwnersLendingLibraryDebugFlagEnabled:Z

.field private static isPersonalLendingFilterDebugFlagEnabled:Z

.field private static isRentalFilterDebugFlagEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final initialize()V
    .locals 0

    return-void
.end method

.method public final isKindleOwnersLendingLibraryDebugFlagEnabled()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;->isKindleOwnersLendingLibraryDebugFlagEnabled:Z

    return v0
.end method

.method public final isPersonalLendingFilterEnabled()Z
    .locals 1

    .line 19
    sget-boolean v0, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;->isPersonalLendingFilterDebugFlagEnabled:Z

    return v0
.end method

.method public final isRentalFilterEnabled()Z
    .locals 1

    .line 29
    sget-boolean v0, Lcom/amazon/kcp/debug/LendingFiltersDebugUtils;->isRentalFilterDebugFlagEnabled:Z

    return v0
.end method
