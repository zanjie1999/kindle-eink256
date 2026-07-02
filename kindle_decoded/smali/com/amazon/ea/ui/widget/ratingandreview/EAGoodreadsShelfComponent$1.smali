.class Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$1;
.super Ljava/lang/Object;
.source "EAGoodreadsShelfComponent.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->createView(Landroid/view/ViewGroup;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

.field final synthetic val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;Lcom/amazon/startactions/jit/BlockingTutorialFragment;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$1;->val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 171
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$1;->val$blockingTutorialFragment:Lcom/amazon/startactions/jit/BlockingTutorialFragment;

    if-eqz p1, :cond_0

    .line 172
    invoke-virtual {p1}, Landroid/app/DialogFragment;->dismiss()V

    const/4 p1, 0x0

    const-string p2, "anyactions.autoshelving"

    const-string v0, "endActionsTutorialEnabled"

    .line 173
    invoke-static {p2, v0, p1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->setBooleanPreference(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 p2, 0x1

    const-string v0, "ClickedJITToggle"

    invoke-virtual {p1, v0, p2}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 179
    :cond_0
    sget-object p1, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;

    .line 181
    invoke-static {p2}, Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/EAGoodreadsShelfComponent;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "AnyActionsRateAndShelveWidget"

    const-string v1, "ToggleAutoShelving"

    .line 179
    invoke-interface {p1, v0, v1, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
