.class public abstract Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;
.super Ljava/lang/Object;
.source "BaseShareOnItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;


# static fields
.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "SocialSharing"


# instance fields
.field protected final callingActivity:Landroid/app/Activity;

.field protected final entryPoint:Ljava/lang/String;

.field protected genericAlertDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

.field protected itemClicked:Z

.field protected selectedGridPos:I

.field protected volatile share:Lcom/amazon/kindle/socialsharing/service/Share;

.field protected shareContent:Lcom/amazon/kindle/socialsharing/ShareContent;

.field protected volatile shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

.field protected spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

.field protected final theme:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

.field private wirelessDialog:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ShareContent;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->selectedGridPos:I

    .line 57
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getSharedInstance()Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->theme:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    .line 74
    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    .line 76
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->entryPoint:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareContent:Lcom/amazon/kindle/socialsharing/ShareContent;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 80
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->initializeDialogFragments(Landroid/content/res/Resources;)V

    return-void
.end method

.method private dismissSpinnerDialogSafely()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract composeShare()V
.end method

.method protected initializeDialogFragments(Landroid/content/res/Resources;)V
    .locals 3

    .line 84
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_title_error:I

    .line 85
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_message_generic_error:I

    .line 86
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener$1;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener$1;-><init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;)V

    .line 84
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->genericAlertDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    .line 94
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_no_connection_title:I

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/socialsharing/common/R$string;->dialog_fragment_no_connection_message:I

    .line 96
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener$2;

    invoke-direct {v2, p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener$2;-><init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;)V

    .line 94
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;)Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->wirelessDialog:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    .line 104
    sget v0, Lcom/amazon/kindle/socialsharing/common/R$string;->spinner_dialog_fragment_message:I

    .line 105
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;->newInstance(Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    return-void
.end method

.method public onError(Lcom/android/volley/VolleyError;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error during making a request to the service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "%s: %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SocialSharing"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->dismissSpinnerDialogSafely()V

    .line 223
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->genericAlertDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->genericAlertDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/GenericAlertDialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "Got IllegalStateException in onError; ignoring it."

    .line 225
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 127
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ConnectivityHelper;->hasNetworkConnection()Z

    move-result p2

    const-string p4, "SocialSharing"

    if-nez p2, :cond_0

    const-string p1, "No network connectivity"

    .line 128
    invoke-static {p4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "ShareErrorSharingWhileNoConnection"

    .line 131
    invoke-static {p1}, Lcom/amazon/kindle/socialsharing/metrics/ReadingStreamsUtil;->performAction(Ljava/lang/String;)V

    .line 132
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->reportNoConnectivity()V

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->wirelessDialog:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->wirelessDialog:Lcom/amazon/kindle/socialsharing/ui/activity/WirelessDialogFragment;

    invoke-virtual {p3}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void

    .line 141
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    .line 142
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-boolean p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->itemClicked:Z

    if-eqz p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 148
    iput-boolean p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->itemClicked:Z

    .line 151
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    const/4 p3, 0x0

    const/4 p5, 0x2

    const-string v0, "%s: %s"

    if-eqz p2, :cond_2

    new-array p2, p5, [Ljava/lang/Object;

    .line 152
    sget-object p5, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    aput-object p5, p2, p3

    const-string p3, "Composing the share now that UI is ready"

    aput-object p3, p2, p1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->composeShare()V

    .line 154
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getCloseAfterSharing()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    new-array p2, p5, [Ljava/lang/Object;

    .line 158
    sget-object p5, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    aput-object p5, p2, p3

    const-string p3, "Showing the spinner until the response is ready"

    aput-object p3, p2, p1

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->spinnerDialogFragment:Lcom/amazon/kindle/socialsharing/ui/activity/SpinnerDialogFragment;

    invoke-virtual {p3}, Landroid/app/DialogFragment;->getTag()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onResponse(Lcom/amazon/kindle/socialsharing/service/Share;)V
    .locals 5

    .line 199
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    .line 200
    sget-object v2, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResponse: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "%s: %s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "SocialSharing"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    if-nez v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 207
    sget-object v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "Deferring to compose the share until UI is ready"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 209
    sget-object v1, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->CLASS_TAG:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "Composing the share in onResponse"

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-virtual {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->composeShare()V

    .line 211
    invoke-direct {p0}, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->dismissSpinnerDialogSafely()V

    .line 212
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->shareTargetGridItem:Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/ui/gridItem/ShareTargetGridItem;->getCloseAfterSharing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->callingActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 166
    check-cast p1, Landroid/widget/GridView;

    .line 167
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p2

    .line 176
    iget v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->selectedGridPos:I

    if-eq v0, v2, :cond_1

    .line 177
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->theme:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    invoke-virtual {v3}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getDefaultGridItemBackgroundColor()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 178
    iget v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->selectedGridPos:I

    if-ne p2, v0, :cond_1

    .line 179
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    iget v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->selectedGridPos:I

    invoke-virtual {p1}, Landroid/widget/GridView;->getId()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p1, p2, v0, v3, v4}, Landroid/widget/GridView;->performItemClick(Landroid/view/View;IJ)Z

    .line 182
    :cond_1
    iput v2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->selectedGridPos:I

    goto :goto_0

    .line 169
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1, v0, p2}, Landroid/widget/GridView;->pointToPosition(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->selectedGridPos:I

    if-eq p2, v2, :cond_3

    .line 171
    invoke-virtual {p1, p2}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->theme:Lcom/amazon/kindle/socialsharing/util/ThemeUtil;

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/util/ThemeUtil;->getGridItemPressedBackgroundColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_3
    :goto_0
    return v1
.end method

.method public resetItemClicked()V
    .locals 1

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/amazon/kindle/socialsharing/ui/gridItem/BaseShareOnItemClickListener;->itemClicked:Z

    return-void
.end method

.method protected validateBook(Lcom/amazon/kindle/krx/content/IBook;)Z
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "SocialSharing"

    const-string v0, "Book should never be null"

    .line 117
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
