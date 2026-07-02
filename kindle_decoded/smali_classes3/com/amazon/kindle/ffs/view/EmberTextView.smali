.class public final Lcom/amazon/kindle/ffs/view/EmberTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "EmberTextView.kt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;)V

    .line 10
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/EmberTextView;->setFont()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/EmberTextView;->setFont()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    invoke-direct {p0}, Lcom/amazon/kindle/ffs/view/EmberTextView;->setFont()V

    return-void
.end method

.method private final setFont()V
    .locals 3

    .line 22
    sget-object v0, Lcom/amazon/kindle/ffs/utils/TypeFaceHelper;->INSTANCE:Lcom/amazon/kindle/ffs/utils/TypeFaceHelper;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Amazon-Ember-Regular.ttf"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/ffs/utils/TypeFaceHelper;->getTypeface(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
