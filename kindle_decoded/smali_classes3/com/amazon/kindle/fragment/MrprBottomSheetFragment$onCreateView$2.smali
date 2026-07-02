.class final Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "MrprBottomSheetFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$2;->this$0:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    iput-object p2, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$2;->$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$2;->this$0:Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;

    iget-object v1, p0, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment$onCreateView$2;->$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;->updateComponents$default(Lcom/amazon/kindle/fragment/MrprBottomSheetFragment;Lcom/amazon/android/docviewer/KindleDocViewer;ZILjava/lang/Object;)V

    return-void
.end method
