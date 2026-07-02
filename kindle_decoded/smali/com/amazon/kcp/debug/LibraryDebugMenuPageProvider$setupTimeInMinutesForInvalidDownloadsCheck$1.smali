.class final Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;
.super Ljava/lang/Object;
.source "LibraryDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupTimeInMinutesForInvalidDownloadsCheck(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $sharedPreferences:Landroid/content/SharedPreferences;

.field final synthetic $timeField:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/EditText;Landroid/content/SharedPreferences;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;->$timeField:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 236
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;->$timeField:Landroid/widget/EditText;

    const-string/jumbo v0, "timeField"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    .line 241
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 243
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;->$sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v2, "RemovingInvalidDownloadsDebugMinutes"

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 244
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupTimeInMinutesForInvalidDownloadsCheck$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "Threshold Minutes set for Invalid Downloads Check"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
