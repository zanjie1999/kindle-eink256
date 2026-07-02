.class Lcom/amazon/xray/ui/activity/XrayActivity$BookMapActivityFragmentFactory;
.super Ljava/lang/Object;
.source "XrayActivity.java"

# interfaces
.implements Lcom/amazon/xray/ui/postback/FragmentFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/activity/XrayActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BookMapActivityFragmentFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity$1;)V
    .locals 0

    .line 769
    invoke-direct {p0}, Lcom/amazon/xray/ui/activity/XrayActivity$BookMapActivityFragmentFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public createFragment(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 3

    .line 772
    const-class v0, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    new-instance p1, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;

    invoke-direct {p1}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment;-><init>()V

    return-object p1

    .line 774
    :cond_0
    const-class v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 775
    new-instance p1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-direct {p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;-><init>()V

    return-object p1

    .line 777
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown fragment class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
