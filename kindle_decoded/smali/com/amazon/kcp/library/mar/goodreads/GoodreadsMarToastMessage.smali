.class public final Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;
.super Ljava/lang/Object;
.source "GoodreadsMarToastMessage.kt"


# instance fields
.field private final messageArg:Ljava/lang/String;

.field private final messageRes:I

.field private final shouldTruncate:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 1

    const-string/jumbo v0, "messageArg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageRes:I

    iput-object p2, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageArg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->shouldTruncate:Z

    return-void
.end method

.method private final getWidth(Landroid/app/Activity;I)I
    .locals 5

    .line 69
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    const-string v2, "currentActivity.windowManager"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 73
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 76
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_padding_horizontal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 77
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_message_action_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3}, Landroid/text/TextPaint;-><init>()V

    .line 87
    sget v4, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_action_text_size:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 88
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p2

    float-to-int v3, p2

    .line 89
    sget p2, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_action_padding_horizontal:I

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    :goto_0
    sub-int/2addr p1, v1

    sub-int/2addr p1, v2

    sub-int/2addr p1, v3

    sub-int/2addr p1, p2

    return p1
.end method

.method public static synthetic truncatedString$default(Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;Landroid/app/Activity;IILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 29
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->truncatedString(Landroid/app/Activity;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final truncatedString(Landroid/app/Activity;I)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    const-string v1, "currentActivity"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 31
    iget v3, v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageRes:I

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageArg:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "resources.getString(messageRes, messageArg)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-boolean v5, v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->shouldTruncate:Z

    if-nez v5, :cond_0

    return-object v3

    .line 37
    :cond_0
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    .line 38
    sget v6, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_message_text_size:I

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 39
    invoke-direct/range {p0 .. p2}, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->getWidth(Landroid/app/Activity;I)I

    move-result v2

    .line 40
    new-instance v6, Landroid/text/StaticLayout;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object v8, v6

    move-object v9, v3

    move-object v10, v5

    move v11, v2

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 43
    invoke-virtual {v6}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v8

    const/4 v15, 0x4

    if-gt v8, v15, :cond_1

    return-object v3

    :cond_1
    const/4 v8, 0x3

    .line 49
    invoke-virtual {v6, v8}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v6

    .line 51
    iget-object v9, v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageArg:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    sub-int/2addr v9, v3

    sub-int/2addr v9, v8

    .line 56
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageArg:Ljava/lang/String;

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-eqz v6, :cond_4

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v8, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x2

    const/4 v9, 0x0

    const-string v10, " "

    invoke-static {v6, v10, v9, v8, v9}, Lkotlin/text/StringsKt;->substringBeforeLast$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    iget v6, v0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageRes:I

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v3, v8, v7

    invoke-virtual {v1, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "resources.getString(messageRes, truncatedItemName)"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    new-instance v16, Landroid/text/StaticLayout;

    sget-object v12, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/16 v17, 0x1

    move-object/from16 v8, v16

    move-object v9, v6

    move-object v10, v5

    move v11, v2

    const/4 v4, 0x4

    move/from16 v15, v17

    invoke-direct/range {v8 .. v15}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 62
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v9, v3, -0x5

    .line 63
    invoke-virtual/range {v16 .. v16}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    if-le v3, v4, :cond_3

    if-gtz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    const/4 v15, 0x4

    goto :goto_0

    :cond_3
    :goto_1
    return-object v6

    .line 56
    :cond_4
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final untruncatedString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget v0, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageRes:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/kcp/library/mar/goodreads/GoodreadsMarToastMessage;->messageArg:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(messageRes, messageArg)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
