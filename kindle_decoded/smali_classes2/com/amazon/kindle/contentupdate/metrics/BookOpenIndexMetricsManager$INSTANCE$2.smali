.class final Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BookOpenIndexMetrics.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;
    .locals 3

    .line 40
    new-instance v0, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-direct {v0, v1, v1, v2, v1}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;-><init>(Lcom/amazon/kindle/contentupdate/RecencySyncHelper;Lcom/amazon/kindle/krx/metrics/IMetricsManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsManager$INSTANCE$2;->invoke()Lcom/amazon/kindle/contentupdate/metrics/BookOpenIndexMetricsImpl;

    move-result-object v0

    return-object v0
.end method
