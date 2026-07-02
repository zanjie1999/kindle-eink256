.class Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;
.super Ljava/lang/Object;
.source "ExcerptsFragment.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpoilerOnChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V
    .locals 0

    .line 756
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/ui/fragment/ExcerptsFragment$1;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;-><init>(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .line 759
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1400(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;)Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->access$1300(Lcom/amazon/xray/ui/fragment/ExcerptsFragment;Lcom/amazon/xray/model/loader/EntityExcerptsTask$Result;Z)V

    .line 762
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$SpoilerOnChangeListener;->this$0:Lcom/amazon/xray/ui/fragment/ExcerptsFragment;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment;->holder:Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;

    iget-object p1, p1, Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;->excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/CardCarousel;->takeAccessibilityFocus()V

    return-void
.end method
