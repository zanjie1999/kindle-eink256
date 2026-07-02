.class public final Lcom/amazon/falkor/utils/SpanUtils;
.super Ljava/lang/Object;
.source "SpanUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/falkor/utils/SpanUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcom/amazon/falkor/utils/SpanUtils;

    invoke-direct {v0}, Lcom/amazon/falkor/utils/SpanUtils;-><init>()V

    sput-object v0, Lcom/amazon/falkor/utils/SpanUtils;->INSTANCE:Lcom/amazon/falkor/utils/SpanUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic createBuilderWithDrawablePlaceholder$default(Lcom/amazon/falkor/utils/SpanUtils;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;IILjava/lang/Object;)Landroid/text/SpannableStringBuilder;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x2

    .line 32
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/amazon/falkor/utils/SpanUtils;->createBuilderWithDrawablePlaceholder(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final createBuilderWithDrawablePlaceholder(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableStringBuilder;
    .locals 1

    const-string/jumbo v0, "stringWithPlaceholder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "placeholder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "drawable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Landroid/text/style/ImageSpan;

    invoke-direct {v0, p3, p4}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 33
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/falkor/utils/SpanUtils;->createBuilderWithImageSpanPlaceholder(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method public final createBuilderWithImageSpanPlaceholder(Ljava/lang/String;Ljava/lang/String;Landroid/text/style/ImageSpan;)Landroid/text/SpannableStringBuilder;
    .locals 7

    const-string/jumbo v0, "stringWithPlaceholder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "placeholder"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "span"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    .line 21
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 24
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, p1

    const-string v1, "()"

    invoke-virtual {v0, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 p2, p1, 0x2

    const/16 v1, 0x11

    .line 25
    invoke-virtual {v0, p3, p1, p2, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    return-object v0
.end method
