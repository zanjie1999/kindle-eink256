.class final Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "MrprBottomSheetFragment.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic this$0:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$1;->$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$1;->this$0:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$1;->$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1, v0}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->access$navigateBetweenLocalAndMrpr(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    return-void
.end method
