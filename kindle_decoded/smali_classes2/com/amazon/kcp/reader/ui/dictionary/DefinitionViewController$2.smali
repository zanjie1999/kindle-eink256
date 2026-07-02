.class Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$2;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "DefinitionViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->setupAccessibility()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$2;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 4

    .line 272
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 273
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$2;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$000(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->getContentDescriptionForDictionary(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController$2;->this$0:Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;->access$000(Lcom/amazon/kcp/reader/ui/dictionary/DefinitionViewController;)Ljava/lang/String;

    move-result-object v0

    .line 277
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/amazon/kindle/dcm/R$string;->read_langauge_selection:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
