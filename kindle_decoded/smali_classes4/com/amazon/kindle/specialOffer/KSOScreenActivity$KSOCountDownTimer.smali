.class Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;
.super Landroid/os/CountDownTimer;
.source "KSOScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/specialOffer/KSOScreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KSOCountDownTimer"
.end annotation


# static fields
.field private static final INTERVAL_IN_MILLIS:J = 0x64L

.field private static final KSO_EXPIRATION_IN_SECONDS:J = 0x2L


# instance fields
.field private final campaignId:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Ljava/lang/String;)V
    .locals 4

    .line 254
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    const-wide/16 v0, 0x7d0

    const-wide/16 v2, 0x64

    .line 255
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 256
    iput-object p2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;->campaignId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    .line 266
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$000(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;->campaignId:Ljava/lang/String;

    const-string v2, "wait_campaign"

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/specialOffer/IKSOCacheManager;->reportKSOMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$300(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)V

    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 261
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->access$500(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;->this$0:Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    sget v2, Lcom/amazon/kindle/thirdparty/R$string;->kso_skip_button_counting:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    long-to-double p1, p1

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
