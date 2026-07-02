.class final Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DisplayMaskMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsProvider;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsProvider;

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsProvider;->getMetrics()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kindle/displaymask/NoOpDisplayMaskMetricsImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/NoOpDisplayMaskMetricsImpl;-><init>()V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 13
    invoke-virtual {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskMetricsManager$INSTANCE$2;->invoke()Lcom/amazon/kindle/displaymask/DisplayMaskMetrics;

    move-result-object v0

    return-object v0
.end method
