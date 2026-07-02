.class Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;
.super Ljava/lang/Object;
.source "AuthorBioWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/ui/widget/AuthorBioWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AffinityClickListener"
.end annotation


# instance fields
.field private final asin:Ljava/lang/String;

.field private final authorIndex:I

.field final synthetic this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget;Ljava/lang/String;I)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 566
    iput-object p2, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;->asin:Ljava/lang/String;

    .line 567
    iput p3, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;->authorIndex:I

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;)Ljava/lang/String;
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;->asin:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;)I
    .locals 0

    .line 550
    iget p0, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;->authorIndex:I

    return p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 572
    iget-object p1, p0, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;->this$0:Lcom/amazon/startactions/ui/widget/AuthorBioWidget;

    iget-object p1, p1, Lcom/amazon/startactions/ui/widget/WidgetBase;->controller:Lcom/amazon/startactions/ui/IAnyActionsUIController;

    invoke-interface {p1}, Lcom/amazon/startactions/ui/IAnyActionsUIController;->getSessionMetric()Lcom/amazon/startactions/metrics/Metric;

    move-result-object p1

    const-string v0, "DidAnything"

    invoke-static {v0}, Lcom/amazon/ea/metrics/MC;->key(Ljava/lang/String;)Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/startactions/metrics/Metric;->setFlag(Ljava/lang/String;Z)V

    .line 574
    invoke-static {}, Lcom/amazon/ea/util/WirelessHelper;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 575
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/application/KRXDialogType;->CONNECTION_ERROR:Lcom/amazon/kindle/krx/application/KRXDialogType;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->showDialog(Lcom/amazon/kindle/krx/application/KRXDialogType;Ljava/lang/String;)Z

    return-void

    .line 579
    :cond_0
    new-instance p1, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;

    invoke-direct {p1, p0}, Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener$1;-><init>(Lcom/amazon/startactions/ui/widget/AuthorBioWidget$AffinityClickListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    .line 648
    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
