.class public final Lcom/amazon/kindle/recaps/CustomButton;
.super Landroid/widget/Button;
.source "CustomButton.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final setFont()V
    .locals 2

    .line 18
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "Amazon-Ember-Regular.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    invoke-virtual {p0, v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 0

    .line 13
    invoke-super {p0}, Landroid/widget/Button;->onFinishInflate()V

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/recaps/CustomButton;->setFont()V

    return-void
.end method
