.class public Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;
.super Landroid/app/Activity;
.source "CustomOverflowShareActivity.java"


# static fields
.field public static final EXTRA_ENTRY_POINT:Ljava/lang/String; = "com.amazon.kindle.socialsharing.ui.activity.CustomOverflowShareActivity.EXTRA_ENTRY_POINT"

.field public static final EXTRA_EXCLUDE_PACKAGES:Ljava/lang/String; = "com.amazon.kindle.socialsharing.ui.activity.CustomOverflowShareActivity.EXTRA_EXCLUDE_PACKAGES"

.field public static final EXTRA_SHARE:Ljava/lang/String; = "com.amazon.kindle.socialsharing.ui.activity.CustomOverflowShareActivity.EXTRA_SHARE"

.field public static final EXTRA_SHARE_TARGET_GRID_ITEM_TITLE:Ljava/lang/String; = "com.amazon.kindle.socialsharing.ui.activity.CustomOverflowShareActivity.EXTRA_SHARE_TARGET_GRID_ITEM_TITLE"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private entryPoint:Ljava/lang/String;

.field private share:Lcom/amazon/kindle/socialsharing/service/Share;

.field private shareTargetGridItemTitle:Ljava/lang/String;

.field private shareText:Ljava/lang/String;

.field private shared:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    const-class v0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-boolean v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->shared:Z

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->shared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->updateShare(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;)Ljava/lang/String;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->shareText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private updateShare(Landroid/content/pm/ResolveInfo;)V
    .locals 6

    .line 152
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->entryPoint:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->shareTargetGridItemTitle:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "more_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, v3, v0, p1}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 62
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 64
    sget p1, Lcom/amazon/kindle/socialsharing/common/R$layout;->share_overflow_dialog:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.amazon.kindle.socialsharing.ui.activity.CustomOverflowShareActivity.EXTRA_SHARE"

    .line 68
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/socialsharing/service/Share;

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->share:Lcom/amazon/kindle/socialsharing/service/Share;

    const-string v0, "com.amazon.kindle.socialsharing.ui.activity.CustomOverflowShareActivity.EXTRA_ENTRY_POINT"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->entryPoint:Ljava/lang/String;

    const-string v0, "com.amazon.kindle.socialsharing.ui.activity.CustomOverflowShareActivity.EXTRA_SHARE_TARGET_GRID_ITEM_TITLE"

    .line 70
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->shareTargetGridItemTitle:Ljava/lang/String;

    const-string v0, "android.intent.extra.TEXT"

    .line 72
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->shareText:Ljava/lang/String;

    const-string v1, "com.amazon.kindle.socialsharing.ui.activity.CustomOverflowShareActivity.EXTRA_EXCLUDE_PACKAGES"

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 75
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 76
    invoke-static {v1, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 78
    sget p1, Lcom/amazon/kindle/socialsharing/common/R$id;->overflow_dialog_list_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    .line 80
    invoke-static {}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getBaseMoreButtonShareIntent()Landroid/content/Intent;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->shareText:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 84
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 86
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareAdapter;

    invoke-direct {v0, p0, v2}, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 93
    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 95
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$1;-><init>(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 123
    sget p1, Lcom/amazon/kindle/socialsharing/common/R$id;->transparent_background:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 124
    new-instance v0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity$2;-><init>(Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 141
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 146
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    iget-boolean v1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/CustomOverflowShareActivity;->shared:Z

    invoke-interface {v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->reportOverflowShareSuccess(Z)V

    :cond_2
    return-void
.end method
