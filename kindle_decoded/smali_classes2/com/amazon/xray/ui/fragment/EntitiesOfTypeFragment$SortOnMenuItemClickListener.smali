.class Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortOnMenuItemClickListener;
.super Ljava/lang/Object;
.source "EntitiesOfTypeFragment.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortOnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortOnMenuItemClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V
    .locals 0

    .line 335
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortOnMenuItemClickListener;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .line 339
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortOnMenuItemClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->getSortType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortOnMenuItemClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    iget-object v0, v0, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    const/4 v1, 0x0

    const-string/jumbo v3, "xray.preference.config"

    invoke-virtual {v0, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 345
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const-string v3, "EntitySortType"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 348
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Relevance"

    goto :goto_0

    :cond_1
    const-string p1, "Name"

    .line 351
    :goto_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 352
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "Xray"

    const-string v3, "SortOrder"

    .line 353
    invoke-interface {v0, v1, v3, p1, v2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method
