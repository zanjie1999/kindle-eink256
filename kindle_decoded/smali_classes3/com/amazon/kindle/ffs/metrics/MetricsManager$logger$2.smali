.class final Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MetricsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/metrics/MetricsManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/krx/logging/ILogger;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;->INSTANCE:Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 1

    .line 49
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/amazon/kindle/ffs/metrics/MetricsManager$logger$2;->invoke()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    return-object v0
.end method
