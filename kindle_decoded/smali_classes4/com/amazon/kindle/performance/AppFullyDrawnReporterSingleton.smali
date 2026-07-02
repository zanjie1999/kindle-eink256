.class public final Lcom/amazon/kindle/performance/AppFullyDrawnReporterSingleton;
.super Ljava/lang/Object;
.source "AppFullyDrawnReporter.kt"


# static fields
.field private static final reporter:Lcom/amazon/kindle/performance/AppFullyDrawnReporterImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/kindle/performance/AppFullyDrawnReporterSingleton;

    invoke-direct {v0}, Lcom/amazon/kindle/performance/AppFullyDrawnReporterSingleton;-><init>()V

    .line 14
    new-instance v0, Lcom/amazon/kindle/performance/AppFullyDrawnReporterImpl;

    invoke-direct {v0}, Lcom/amazon/kindle/performance/AppFullyDrawnReporterImpl;-><init>()V

    sput-object v0, Lcom/amazon/kindle/performance/AppFullyDrawnReporterSingleton;->reporter:Lcom/amazon/kindle/performance/AppFullyDrawnReporterImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kindle/performance/AppFullyDrawnReporter;
    .locals 1

    .line 17
    sget-object v0, Lcom/amazon/kindle/performance/AppFullyDrawnReporterSingleton;->reporter:Lcom/amazon/kindle/performance/AppFullyDrawnReporterImpl;

    return-object v0
.end method
