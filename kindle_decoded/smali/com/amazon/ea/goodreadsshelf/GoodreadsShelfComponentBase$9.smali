.class Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$9;
.super Ljava/lang/Object;
.source "GoodreadsShelfComponentBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;->displaySubtleJit(Landroid/widget/LinearLayout;Landroid/widget/TextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase;Landroid/widget/TextView;)V
    .locals 0

    .line 816
    iput-object p2, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$9;->val$message:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$9;->val$message:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 823
    iget-object v0, p0, Lcom/amazon/ea/goodreadsshelf/GoodreadsShelfComponentBase$9;->val$message:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 824
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
