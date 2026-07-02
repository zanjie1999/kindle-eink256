.class public final Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;
.super Ljava/lang/Object;
.source "DownloadRequestGroupProgressAndStatusTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 352
    invoke-direct {p0}, Lcom/amazon/kindle/download/assets/DownloadRequestGroupProgressAndStatusTracker$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getProgressThrottleFor(Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)J
    .locals 2

    const-string v0, "triggerSource"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 360
    instance-of p1, p1, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$ONE_TAP;

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x64

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xfa

    :goto_0
    return-wide v0
.end method
