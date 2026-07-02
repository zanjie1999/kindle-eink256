.class final Lcom/amazon/kindle/recaps/fragments/TocFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "TocFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/fragments/TocFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $tocButton:Landroid/widget/ToggleButton;


# direct methods
.method constructor <init>(Landroid/widget/ToggleButton;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment$onCreateView$2;->$tocButton:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/amazon/kindle/recaps/fragments/TocFragment$onCreateView$2;->$tocButton:Landroid/widget/ToggleButton;

    invoke-virtual {p1}, Landroid/widget/ToggleButton;->toggle()V

    return-void
.end method
