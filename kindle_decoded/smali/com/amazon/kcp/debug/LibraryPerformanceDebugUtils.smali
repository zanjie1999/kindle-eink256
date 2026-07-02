.class public final Lcom/amazon/kcp/debug/LibraryPerformanceDebugUtils;
.super Ljava/lang/Object;
.source "LibraryPerformanceDebugUtils.kt"


# static fields
.field private static isLibraryPerformanceTrackerEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3
    new-instance v0, Lcom/amazon/kcp/debug/LibraryPerformanceDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LibraryPerformanceDebugUtils;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isLibraryPerformanceTrackerEnabled()Z
    .locals 1

    .line 12
    sget-boolean v0, Lcom/amazon/kcp/debug/LibraryPerformanceDebugUtils;->isLibraryPerformanceTrackerEnabled:Z

    return v0
.end method
