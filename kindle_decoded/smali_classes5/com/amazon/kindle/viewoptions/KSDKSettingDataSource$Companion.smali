.class public final Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;
.super Ljava/lang/Object;
.source "KSDKSettingDataSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final bookLayoutCompleted$KindleReaderLibrary_release()V
    .locals 2

    .line 35
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-static {}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->access$getPerformanceInProgressIdentifier$cp()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->bookUpdatePerformanceStringForIdentifier(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 36
    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->access$setPerformanceInProgressIdentifier$cp(Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 37
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public final markPerformanceStartForIdentifier$KindleReaderLibrary_release(I)V
    .locals 2

    .line 28
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->bookUpdatePerformanceStringForIdentifier(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/KSDKSettingDataSource;->access$setPerformanceInProgressIdentifier$cp(Ljava/lang/Integer;)V

    const/4 p1, 0x1

    .line 30
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
