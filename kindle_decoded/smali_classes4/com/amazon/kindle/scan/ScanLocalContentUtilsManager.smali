.class public final Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;
.super Ljava/lang/Object;
.source "ScanLocalContentUtils.kt"


# static fields
.field private static INSTANCE:Lcom/amazon/kindle/scan/ScanLocalContentUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 487
    new-instance v0, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;

    invoke-direct {v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/amazon/kindle/scan/ScanLocalContentUtils;
    .locals 1

    .line 491
    sget-object v0, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->INSTANCE:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "INSTANCE"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public static final setInstance(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V
    .locals 1

    const-string v0, "scanLocalContentUtils"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    sput-object p0, Lcom/amazon/kindle/scan/ScanLocalContentUtilsManager;->INSTANCE:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    return-void
.end method
