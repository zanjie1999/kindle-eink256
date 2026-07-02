.class final Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;
.super Ljava/lang/Object;
.source "LibraryDebugMenuPageProvider.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->setupChangeContentMetadataSection(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $asinEditText:Landroid/widget/EditText;

.field final synthetic $contentMetadataSpinner:Landroid/widget/Spinner;

.field final synthetic $isSampleSpinner:Landroid/widget/Spinner;

.field final synthetic $valueEditText:Landroid/widget/EditText;

.field final synthetic this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    iput-object p2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->$contentMetadataSpinner:Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->$asinEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->$valueEditText:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->$isSampleSpinner:Landroid/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 214
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->$contentMetadataSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Lcom/amazon/kindle/content/ContentMetadataField;

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->$asinEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->$valueEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->$isSampleSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 218
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_2

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_2

    .line 219
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    const-string v4, "Utils.getFactory()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v3

    const-string v4, "libraryService"

    .line 220
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v0, v2, v4, v5}, Lcom/amazon/kindle/content/ILibraryService;->getContentByAsin(Ljava/lang/String;ZLjava/lang/String;Z)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 222
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 223
    iget-object v4, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {v4, p1, v1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$convertStringToMetadataObject(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;Lcom/amazon/kindle/content/ContentMetadataField;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    invoke-interface {v3, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->updateContentMetadata(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Map;)V

    .line 225
    iget-object p1, p0, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider$setupChangeContentMetadataSection$1;->this$0:Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;

    invoke-static {p1}, Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;->access$getContext$p(Lcom/amazon/kcp/debug/LibraryDebugMenuPageProvider;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "Value Updated"

    invoke-static {p1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void

    .line 217
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type kotlin.Boolean"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 214
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string/jumbo v0, "null cannot be cast to non-null type com.amazon.kindle.content.ContentMetadataField"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
