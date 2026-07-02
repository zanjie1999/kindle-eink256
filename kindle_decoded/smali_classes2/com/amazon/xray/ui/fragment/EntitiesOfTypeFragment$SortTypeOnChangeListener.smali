.class Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;
.super Ljava/lang/Object;
.source "EntitiesOfTypeFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortTypeOnChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V
    .locals 0

    .line 363
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 0

    const-string p1, "EntitySortType"

    .line 366
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 368
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$1000(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Lcom/amazon/xray/model/loader/ContentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/ContentLoader;->unload()V

    .line 370
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$1000(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Lcom/amazon/xray/model/loader/ContentLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/xray/model/loader/ContentLoader;->load()V

    .line 375
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$1102(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;I)I

    .line 376
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortTypeOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1, p2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$1202(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;I)I

    :cond_0
    return-void
.end method
