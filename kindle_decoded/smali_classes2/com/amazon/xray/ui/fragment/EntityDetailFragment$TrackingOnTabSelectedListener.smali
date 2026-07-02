.class Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;
.super Ljava/lang/Object;
.source "EntityDetailFragment.java"

# interfaces
.implements Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrackingOnTabSelectedListener"
.end annotation


# instance fields
.field private final adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;


# direct methods
.method public constructor <init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Lcom/amazon/xray/ui/widget/TabView$TabAdapter;)V
    .locals 0

    .line 531
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 532
    iput-object p2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    return-void
.end method


# virtual methods
.method public onTabSelected(I)V
    .locals 3

    .line 538
    invoke-static {}, Lcom/amazon/xray/plugin/util/BookUtil;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    const-string v1, "UITaps"

    .line 540
    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PressedTab_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    invoke-virtual {v2, p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getStateKey(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-static {v0}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$300(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-static {v0}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$300(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-static {v0}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$300(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result v0

    if-nez v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const/4 v1, 0x0

    const-string/jumbo v2, "xray.preference.config"

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 548
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$TrackingOnTabSelectedListener;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    .line 549
    invoke-virtual {v1, p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getStateKey(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "LastSelectedTab"

    .line 548
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 549
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method
