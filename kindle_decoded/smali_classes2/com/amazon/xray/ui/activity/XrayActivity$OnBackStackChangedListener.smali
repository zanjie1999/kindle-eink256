.class Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;
.super Ljava/lang/Object;
.source "XrayActivity.java"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/activity/XrayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnBackStackChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/activity/XrayActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;Lcom/amazon/xray/ui/activity/XrayActivity$1;)V
    .locals 0

    .line 785
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;)V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    .line 789
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$500(Lcom/amazon/xray/ui/activity/XrayActivity;)Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/xray/ui/postback/FragmentPostBackHelper;->getCurrentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/xray/ui/activity/XrayActivity;->access$600(Lcom/amazon/xray/ui/activity/XrayActivity;Landroidx/fragment/app/Fragment;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/amazon/xray/ui/activity/XrayActivity;->canNavigateUpToBook:Z

    .line 791
    iget-object v0, p0, Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    sget v1, Lcom/amazon/kindle/xray/R$id;->xray_fragment_container:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 792
    iget-object v1, p0, Lcom/amazon/xray/ui/activity/XrayActivity$OnBackStackChangedListener;->this$0:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method
