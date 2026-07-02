.class public final Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;
.super Ljava/lang/Object;
.source "DiscoveryBottomSheetStatus.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDiscoveryBottomSheetStatus.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoveryBottomSheetStatus.kt\ncom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,24:1\n1203#2,2:25\n*E\n*S KotlinDebug\n*F\n+ 1 DiscoveryBottomSheetStatus.kt\ncom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus\n*L\n11#1,2:25\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;

.field private static status:Lcom/amazon/kindle/ffs/view/starting/Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;

    .line 9
    sget-object v0, Lcom/amazon/kindle/ffs/view/starting/Status;->NOT_CONNECTING:Lcom/amazon/kindle/ffs/view/starting/Status;

    sput-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->status:Lcom/amazon/kindle/ffs/view/starting/Status;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getIntStatus()I
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->status:Lcom/amazon/kindle/ffs/view/starting/Status;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/view/starting/Status;->getI()I

    move-result v0

    return v0
.end method

.method public final getStatus()Lcom/amazon/kindle/ffs/view/starting/Status;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->status:Lcom/amazon/kindle/ffs/view/starting/Status;

    return-object v0
.end method

.method public final getStatusFromInt(I)Lcom/amazon/kindle/ffs/view/starting/Status;
    .locals 6

    .line 11
    invoke-static {}, Lcom/amazon/kindle/ffs/view/starting/Status;->values()[Lcom/amazon/kindle/ffs/view/starting/Status;

    move-result-object v0

    .line 25
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 11
    invoke-virtual {v4}, Lcom/amazon/kindle/ffs/view/starting/Status;->getI()I

    move-result v5

    if-ne v5, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return-object v4
.end method

.method public final setStatus(Lcom/amazon/kindle/ffs/view/starting/Status;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sput-object p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetStatus;->status:Lcom/amazon/kindle/ffs/view/starting/Status;

    return-void
.end method
