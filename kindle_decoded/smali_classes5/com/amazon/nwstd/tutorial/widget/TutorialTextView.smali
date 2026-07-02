.class public Lcom/amazon/nwstd/tutorial/widget/TutorialTextView;
.super Landroid/widget/TextView;
.source "TutorialTextView.java"


# static fields
.field private static final PATH_FONT:Ljava/lang/String; = "fonts/CCWildWordsLowerRegular.otf"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/tutorial/widget/TutorialTextView;->setFont(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/tutorial/widget/TutorialTextView;->setFont(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/nwstd/tutorial/widget/TutorialTextView;->setFont(Landroid/content/Context;)V

    return-void
.end method

.method private setFont(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v0, "fonts/CCWildWordsLowerRegular.otf"

    invoke-static {p1, v0}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method
