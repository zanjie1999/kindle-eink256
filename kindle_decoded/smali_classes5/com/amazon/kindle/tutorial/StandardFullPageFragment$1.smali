.class Lcom/amazon/kindle/tutorial/StandardFullPageFragment$1;
.super Ljava/lang/Object;
.source "StandardFullPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/tutorial/StandardFullPageFragment;->setUpButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/tutorial/StandardFullPageFragment;

.field final synthetic val$currentActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/tutorial/StandardFullPageFragment;Landroid/app/Activity;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/StandardFullPageFragment$1;->this$0:Lcom/amazon/kindle/tutorial/StandardFullPageFragment;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/StandardFullPageFragment$1;->val$currentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 56
    iget-object p1, p0, Lcom/amazon/kindle/tutorial/StandardFullPageFragment$1;->val$currentActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
