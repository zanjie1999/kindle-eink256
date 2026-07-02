.class public Lcom/amazon/kcp/info/TutorialFragment;
.super Landroidx/fragment/app/Fragment;
.source "TutorialFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/info/TutorialFragment$ITutorialListener;
    }
.end annotation


# static fields
.field private static LAYOUT_ID_KEY:Ljava/lang/String; = "LayoutId"

.field private static TUTORIAL_TYPE_KEY:Ljava/lang/String; = "TutorialType"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/info/TutorialFragment;)Lcom/amazon/kcp/info/TutorialManager$JITTutorial;
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/amazon/kcp/info/TutorialFragment;->getTutorialType()Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    move-result-object p0

    return-object p0
.end method

.method private getTutorialType()Lcom/amazon/kcp/info/TutorialManager$JITTutorial;
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/info/TutorialFragment;->TUTORIAL_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    invoke-static {}, Lcom/amazon/kcp/info/TutorialManager$JITTutorial;->values()[Lcom/amazon/kcp/info/TutorialManager$JITTutorial;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    sget-object v0, Lcom/amazon/kcp/info/TutorialFragment;->LAYOUT_ID_KEY:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 34
    new-instance p2, Lcom/amazon/kcp/info/TutorialFragment$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/info/TutorialFragment$1;-><init>(Lcom/amazon/kcp/info/TutorialFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method
