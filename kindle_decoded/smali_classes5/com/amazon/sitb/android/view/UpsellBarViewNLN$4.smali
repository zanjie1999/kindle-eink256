.class Lcom/amazon/sitb/android/view/UpsellBarViewNLN$4;
.super Ljava/lang/Object;
.source "UpsellBarViewNLN.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/view/UpsellBarViewNLN;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$4;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 172
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$4;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    invoke-virtual {p1}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->getLogger()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    const-string v1, "Unexpected click"

    invoke-interface {p1, v1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->warning(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
