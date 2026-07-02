.class public final Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt$handleUrlClicks$$inlined$apply$lambda$1;
.super Landroid/text/style/ClickableSpan;
.source "TextViewExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt;->handleUrlClicks(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $it:Landroid/text/style/URLSpan;

.field final synthetic $onClicked$inlined:Lkotlin/jvm/functions/Function1;

.field final synthetic $this_apply$inlined:Landroid/text/SpannableStringBuilder;


# direct methods
.method constructor <init>(Landroid/text/style/URLSpan;Landroid/text/SpannableStringBuilder;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt$handleUrlClicks$$inlined$apply$lambda$1;->$it:Landroid/text/style/URLSpan;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt$handleUrlClicks$$inlined$apply$lambda$1;->$this_apply$inlined:Landroid/text/SpannableStringBuilder;

    iput-object p3, p0, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt$handleUrlClicks$$inlined$apply$lambda$1;->$onClicked$inlined:Lkotlin/jvm/functions/Function1;

    .line 15
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt$handleUrlClicks$$inlined$apply$lambda$1;->$onClicked$inlined:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt$handleUrlClicks$$inlined$apply$lambda$1;->$it:Landroid/text/style/URLSpan;

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "it.url"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
