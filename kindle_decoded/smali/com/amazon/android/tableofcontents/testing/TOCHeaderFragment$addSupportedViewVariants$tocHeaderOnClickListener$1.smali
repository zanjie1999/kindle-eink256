.class final Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment$addSupportedViewVariants$tocHeaderOnClickListener$1;
.super Ljava/lang/Object;
.source "TOCHeaderFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;->addSupportedViewVariants(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;


# direct methods
.method constructor <init>(Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment$addSupportedViewVariants$tocHeaderOnClickListener$1;->this$0:Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 37
    iget-object p1, p0, Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment$addSupportedViewVariants$tocHeaderOnClickListener$1;->this$0:Lcom/amazon/android/tableofcontents/testing/TOCHeaderFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Dummy TOC header click"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
