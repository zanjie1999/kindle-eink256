.class final Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AssetRequestDownloadManagerTaskProcessor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor;-><init>(Lcom/amazon/kindle/util/PausableThreadPoolExecutor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/concurrent/atomic/AtomicBoolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;

    invoke-direct {v0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;->INSTANCE:Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 33
    invoke-virtual {p0}, Lcom/amazon/kindle/download/AssetRequestDownloadManagerTaskProcessor$isRequiredExclusiveThreadingEnabled$2;->invoke()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 2

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isARDMUsingRequiredExclusiveThreading()Z

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    return-object v0
.end method
