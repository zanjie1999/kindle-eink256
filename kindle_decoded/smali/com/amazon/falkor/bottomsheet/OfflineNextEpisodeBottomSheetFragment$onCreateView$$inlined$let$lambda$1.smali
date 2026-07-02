.class final Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment$onCreateView$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "OfflineBottomSheetFragments.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $nextBook$inlined:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic this$0:Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;


# direct methods
.method constructor <init>(Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;Landroid/view/LayoutInflater;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;

    iput-object p3, p0, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$nextBook$inlined:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 55
    sget-object p1, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->INSTANCE:Lcom/amazon/falkor/utils/FalkorPerformanceUtils;

    sget-object v0, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v0}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/falkor/utils/FalkorPerformanceUtils;->emitNextEpisodeTapped(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    .line 56
    sget-object p1, Lcom/amazon/falkor/FalkorBookOpenManager;->INSTANCE:Lcom/amazon/falkor/FalkorBookOpenManager;

    iget-object v0, p0, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->this$0:Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/falkor/bottomsheet/OfflineNextEpisodeBottomSheetFragment$onCreateView$$inlined$let$lambda$1;->$nextBook$inlined:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "nextBook.asin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    sget-object v3, Lcom/amazon/falkor/KindleReaderSDKReference;->INSTANCE:Lcom/amazon/falkor/KindleReaderSDKReference;

    invoke-virtual {v3}, Lcom/amazon/falkor/KindleReaderSDKReference;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amazon/falkor/FalkorBookOpenManager;->openBook(Landroid/app/Activity;Ljava/lang/String;ZLcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-void

    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string/jumbo v0, "null cannot be cast to non-null type android.app.Activity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
