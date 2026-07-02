.class public Lcom/amazon/sitb/android/view/samples/SampleBarView;
.super Lcom/amazon/sitb/android/view/UpsellBarViewNLN;
.source "SampleBarView.java"


# static fields
.field private static final log:Lcom/amazon/sitb/android/ISamplingLogger;

.field private static final sampleBarName:Ljava/lang/String; = "Sample"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    invoke-static {}, Lcom/amazon/sitb/android/impl/LoggerManager;->getInstance()Lcom/amazon/sitb/android/impl/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/amazon/sitb/android/view/samples/SampleBarView;

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/impl/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v0

    sput-object v0, Lcom/amazon/sitb/android/view/samples/SampleBarView;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/amazon/sitb/android/ISamplingLogger;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/sitb/android/view/samples/SampleBarView;->log:Lcom/amazon/sitb/android/ISamplingLogger;

    return-object v0
.end method

.method protected getUpsellBarName()Ljava/lang/String;
    .locals 1

    const-string v0, "Sample"

    return-object v0
.end method
