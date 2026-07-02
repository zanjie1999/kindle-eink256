.class public Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;
.super Landroidx/fragment/app/FragmentPagerAdapter;
.source "BrochureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/BrochureActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BrochurePagerAdapter"
.end annotation


# instance fields
.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/FullPageUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/amazon/kindle/tutorial/model/BrochureUI;)V
    .locals 0

    .line 330
    invoke-direct {p0, p1}, Landroidx/fragment/app/FragmentPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 331
    invoke-virtual {p2}, Lcom/amazon/kindle/tutorial/model/BrochureUI;->getPages()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->pages:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->pages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/BrochureActivity$BrochurePagerAdapter;->pages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    add-int/lit8 p1, p1, 0x1

    .line 338
    invoke-static {v0, p1}, Lcom/amazon/kindle/tutorial/BrochurePageFragment;->newFragment(Lcom/amazon/kindle/tutorial/model/FullPageUI;I)Lcom/amazon/kindle/tutorial/BrochurePageFragment;

    move-result-object p1

    return-object p1
.end method
