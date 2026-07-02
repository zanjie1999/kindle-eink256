.class final Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;
.super Ljava/lang/Object;
.source "LibraryDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupSearchLibraryResultsLimit(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $limitField:Landroid/widget/EditText;

.field final synthetic $sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;->$limitField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 259
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;->$limitField:Landroid/widget/EditText;

    const-string v0, "limitField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    .line 261
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 263
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "SearchLibraryResultsLimit"

    if-eqz v1, :cond_0

    .line 264
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 266
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 269
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 270
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupSearchLibraryResultsLimit$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Search Library Results Limit set"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
