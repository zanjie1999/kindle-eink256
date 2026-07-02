.class Lcom/amazon/kindle/tutorial/BrochureActivity$4;
.super Ljava/lang/Object;
.source "BrochureActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/BrochureActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/BrochureActivity;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$4;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$4;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/BrochureActivity;->access$100(Lcom/amazon/kindle/tutorial/BrochureActivity;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$4;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-static {v2}, Lcom/amazon/kindle/tutorial/BrochureActivity;->access$200(Lcom/amazon/kindle/tutorial/BrochureActivity;)Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->getCount()I

    move-result v2

    sget-object v3, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->CLOSE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kindle/tutorial/BrochureActivity;->access$300(Lcom/amazon/kindle/tutorial/BrochureActivity;IILcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;)V

    .line 122
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$4;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/BrochureActivity;->access$000(Lcom/amazon/kindle/tutorial/BrochureActivity;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$4;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/BrochureActivity;->access$000(Lcom/amazon/kindle/tutorial/BrochureActivity;)Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;->DISMISSED_BY_X_BUTTON:Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener;->onTutorialDismissed(Lcom/amazon/kindle/krx/tutorial/ITutorialLifecycleListener$DismissalType;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$4;->this$0:Lcom/amazon/kindle/tutorial/BrochureActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/TutorialFragmentActivity;->finish()V

    return-void
.end method
