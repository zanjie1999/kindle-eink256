.class public Lcom/amazon/kcp/more/InfoActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "InfoActivity.java"


# static fields
.field private static final INFO_FRAGMENT_TAG:Ljava/lang/String; = "INFO_FRAGMENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 23
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    sget p1, Lcom/amazon/kcp/more/R$layout;->fragment_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 26
    sget p1, Lcom/amazon/kcp/more/R$string;->info_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(I)V

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "INFO_FRAGMENT"

    .line 31
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/InfoFragment;

    if-nez v1, :cond_0

    .line 34
    new-instance v1, Lcom/amazon/kcp/library/InfoFragment;

    invoke-direct {v1}, Lcom/amazon/kcp/library/InfoFragment;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v2, Lcom/amazon/kcp/more/R$id;->fragment_container:I

    .line 36
    invoke-virtual {p1, v2, v1, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 37
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_0
    return-void
.end method
