.class public final Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;
.super Ljava/lang/Object;
.source "AtlasPerformanceMarkerFactory.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/performance/PerformanceMarkerFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

.field private static final nullPerformanceMarker:Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->INSTANCE:Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    .line 12
    new-instance v0, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;

    invoke-direct {v0}, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;-><init>()V

    sput-object v0, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->nullPerformanceMarker:Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;
    .locals 1

    .line 15
    sget-object v0, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->INSTANCE:Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;

    return-object v0
.end method


# virtual methods
.method public createEndMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 4

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_1

    .line 37
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-nez v2, :cond_3

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 41
    :cond_2
    new-instance v2, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-end"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;-><init>(Ljava/lang/String;J)V

    return-object v2

    .line 38
    :cond_3
    :goto_2
    sget-object p1, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->nullPerformanceMarker:Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;

    return-object p1
.end method

.method public createMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 7

    if-eqz p1, :cond_1

    .line 18
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

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
    if-nez v0, :cond_3

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 22
    :cond_2
    new-instance v0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 19
    :cond_3
    :goto_2
    sget-object p1, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->nullPerformanceMarker:Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;

    return-object p1
.end method

.method public createStartMarker(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 7

    if-eqz p1, :cond_1

    .line 26
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

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
    if-nez v0, :cond_3

    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    new-instance v0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-start"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    .line 27
    :cond_3
    :goto_2
    sget-object p1, Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory;->nullPerformanceMarker:Lcom/amazon/kindle/performance/AtlasPerformanceMarkerFactory$NoOpPerformanceMarker;

    return-object p1
.end method
