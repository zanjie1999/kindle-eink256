.class Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;
.super Ljava/lang/Object;
.source "EntityDetailFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntityDescriptionOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;Lcom/amazon/xray/ui/fragment/EntityDetailFragment$1;)V
    .locals 0

    .line 368
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;-><init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 371
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;->access$300(Lcom/amazon/xray/ui/fragment/EntityDetailFragment;)Lcom/amazon/xray/model/loader/EntityDetailTask$Result;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/EntityDetailTask$Result;->getEntity()Lcom/amazon/xray/model/object/Entity;

    move-result-object p1

    .line 372
    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;->newInstance(Lcom/amazon/xray/model/object/Entity;)Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "DescriptionDialog"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 376
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$EntityDescriptionOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    const-string v1, "XrayReadingSession"

    invoke-static {v0, v1}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object v0

    .line 377
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Entity;->getId()I

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "PressedBookDescription"

    .line 378
    invoke-virtual {v0, p1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "PressedEntityDescription"

    .line 380
    invoke-virtual {v0, p1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    :goto_0
    const-string p1, "UITaps"

    .line 382
    invoke-virtual {v0, p1}, Lcom/amazon/xray/metrics/Metric;->incrementCount(Ljava/lang/String;)V

    return-void
.end method
