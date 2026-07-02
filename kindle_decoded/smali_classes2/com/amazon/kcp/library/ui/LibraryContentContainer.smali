.class public final Lcom/amazon/kcp/library/ui/LibraryContentContainer;
.super Landroid/widget/RelativeLayout;
.source "LibraryContentContainer.java"


# instance fields
.field private hideChildrenFromAccessibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/LibraryContentContainer;->hideChildrenFromAccessibility:Z

    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 20
    iget-boolean v0, p0, Lcom/amazon/kcp/library/ui/LibraryContentContainer;->hideChildrenFromAccessibility:Z

    if-nez v0, :cond_0

    .line 21
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public setHideChildrenFromAccessibility(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/amazon/kcp/library/ui/LibraryContentContainer;->hideChildrenFromAccessibility:Z

    return-void
.end method
