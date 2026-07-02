.class public final Lcom/amazon/kcp/debug/DetailsViewDebugUtils;
.super Ljava/lang/Object;
.source "DetailsViewDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

.field private static isDetailsViewEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/DetailsViewDebugUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isDetailsViewWeblabEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final initializeDetailsViewWeblab()V
    .locals 1

    .line 12
    sget-boolean v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewWeblabEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled:Z

    return-void
.end method

.method public final isDetailsViewEnabled()Z
    .locals 1

    .line 20
    sget-boolean v0, Lcom/amazon/kcp/debug/DetailsViewDebugUtils;->isDetailsViewEnabled:Z

    return v0
.end method
