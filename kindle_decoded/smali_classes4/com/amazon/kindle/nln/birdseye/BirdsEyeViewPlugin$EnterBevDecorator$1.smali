.class Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$1;
.super Ljava/lang/Object;
.source "BirdsEyeViewPlugin.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$1;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 331
    iget-object p1, p0, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator$1;->this$0:Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;

    invoke-static {p1}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;->access$400(Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin$EnterBevDecorator;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 334
    invoke-static {}, Lcom/amazon/kindle/nln/birdseye/BirdsEyeViewPlugin;->access$300()Ljava/lang/String;

    return-void

    .line 338
    :cond_0
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BEV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->recordMetrics(Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;)V

    .line 341
    invoke-static {}, Lcom/amazon/kindle/nln/NlnTransitionHelper;->transitionToBirdsEye()V

    return-void
.end method
