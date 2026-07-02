.class public final Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt;
.super Ljava/lang/Object;
.source "TextViewExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTextViewExtensions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextViewExtensions.kt\ncom/amazon/kindle/ffs/extensions/TextViewExtensionsKt\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,29:1\n11454#2,2:30\n*E\n*S KotlinDebug\n*F\n+ 1 TextViewExtensions.kt\ncom/amazon/kindle/ffs/extensions/TextViewExtensionsKt\n*L\n12#1,2:30\n*E\n"
.end annotation


# direct methods
.method public static final handleUrlClicks(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$handleUrlClicks"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableStringBuilder;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "getSpans(0, length, URLSpan::class.java)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    array-length v2, v1

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    check-cast v4, Landroid/text/style/URLSpan;

    .line 15
    new-instance v5, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt$handleUrlClicks$$inlined$apply$lambda$1;

    invoke-direct {v5, v4, v0, p1}, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt$handleUrlClicks$$inlined$apply$lambda$1;-><init>(Landroid/text/style/URLSpan;Landroid/text/SpannableStringBuilder;Lkotlin/jvm/functions/Function1;)V

    .line 20
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 21
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    const/16 v8, 0x11

    .line 14
    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 24
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method public static synthetic handleUrlClicks$default(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 11
    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kindle/ffs/extensions/TextViewExtensionsKt;->handleUrlClicks(Landroid/widget/TextView;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method
