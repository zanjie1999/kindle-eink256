.class final Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;
.super Ljava/lang/Object;
.source "LibraryDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupListConsumptionsFailureSection(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $listSpinner:Landroid/widget/Spinner;

.field final synthetic $sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/Spinner;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;->$listSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 286
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;->$listSpinner:Landroid/widget/Spinner;

    const-string v0, "listSpinner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ListConsumptionsDebugResponseError"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 288
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupListConsumptionsFailureSection$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Error set for RLR List Consumtions"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 286
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
