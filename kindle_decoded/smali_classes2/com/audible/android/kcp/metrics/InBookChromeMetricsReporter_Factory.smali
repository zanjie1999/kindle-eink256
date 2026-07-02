.class public final Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;
.super Ljava/lang/Object;
.source "InBookChromeMetricsReporter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8
    new-instance v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;

    invoke-direct {v0}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;-><init>()V

    sput-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;->INSTANCE:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;
    .locals 1

    .line 21
    sget-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;->INSTANCE:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;
    .locals 1

    .line 17
    new-instance v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    invoke-direct {v0}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;
    .locals 1

    .line 13
    invoke-static {}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;->provideInstance()Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-virtual {p0}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter_Factory;->get()Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    move-result-object v0

    return-object v0
.end method
