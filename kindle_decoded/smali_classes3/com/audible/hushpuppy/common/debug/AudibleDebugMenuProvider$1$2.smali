.class Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;
.super Ljava/lang/Object;
.source "AudibleDebugMenuProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;

.field final synthetic val$customEndpointEditText:Landroid/widget/EditText;

.field final synthetic val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;Landroid/widget/EditText;Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;->this$1:Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;

    iput-object p2, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;->val$customEndpointEditText:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;->val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 148
    iget-object p1, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;->val$customEndpointEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 149
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;->val$customWebStoreUriTranslator:Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;

    invoke-virtual {v0, p1}, Lcom/audible/hushpuppy/common/debug/CustomWebStoreUriTranslator;->setCustomEndpoint(Ljava/lang/String;)V

    .line 150
    invoke-static {}, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom endpoint set as: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1$2;->this$1:Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;

    iget-object v0, v0, Lcom/audible/hushpuppy/common/debug/AudibleDebugMenuProvider$1;->val$context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->debug_menu_custom_endpoint_confirmation:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
