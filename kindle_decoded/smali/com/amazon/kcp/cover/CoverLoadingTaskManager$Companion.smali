.class public final Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;
.super Ljava/lang/Object;
.source "CoverLoadingTaskManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/CoverLoadingTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDEFAULT_HIGH_PRIORITY_EXEC_ORDER()Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;
    .locals 1

    .line 41
    invoke-static {}, Lcom/amazon/kcp/cover/CoverLoadingTaskManager;->access$getDEFAULT_HIGH_PRIORITY_EXEC_ORDER$cp()Lcom/amazon/kcp/cover/CoverLoadingTaskManager$ExecutionOrder;

    move-result-object v0

    return-object v0
.end method
