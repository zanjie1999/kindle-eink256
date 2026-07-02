.class public final Lcom/amazon/kindle/ffs/utils/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.kt"


# static fields
.field public static final EMPTY_STRING:Ljava/lang/String; = ""

.field public static final INSTANCE:Lcom/amazon/kindle/ffs/utils/StringUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/kindle/ffs/utils/StringUtils;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/StringUtils;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/StringUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/StringUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 2

    const-string v0, "inText"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    .line 26
    invoke-static {p1, v0}, Landroidx/core/text/HtmlCompat;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "HtmlCompat.fromHtml(inTe\u2026ml.FROM_HTML_MODE_LEGACY)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    const-string v0, "Html.fromHtml(inText)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
