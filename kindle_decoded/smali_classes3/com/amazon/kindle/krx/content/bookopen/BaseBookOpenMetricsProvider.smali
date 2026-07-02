.class public final Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenMetricsProvider;
.super Ljava/lang/Object;
.source "BaseBookOpenMetricsProvider.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getBaseMetrics(Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Ljava/lang/String;)Lcom/amazon/kindle/krx/content/bookopen/BookOpenStateMetrics;
    .locals 1

    const-string v0, "state"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clientId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget-object v0, Lcom/amazon/kindle/krx/content/bookopen/BaseBookOpenMetricsProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 23
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/ReaderBaseMetrics;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/krx/content/bookopen/ReaderBaseMetrics;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 22
    :cond_1
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/SplashScreenBaseMetrics;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/krx/content/bookopen/SplashScreenBaseMetrics;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 21
    :cond_2
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/DownloadBaseMetrics;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/krx/content/bookopen/DownloadBaseMetrics;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 20
    :cond_3
    new-instance p1, Lcom/amazon/kindle/krx/content/bookopen/EntryPointBaseMetrics;

    invoke-direct {p1, p2}, Lcom/amazon/kindle/krx/content/bookopen/EntryPointBaseMetrics;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
