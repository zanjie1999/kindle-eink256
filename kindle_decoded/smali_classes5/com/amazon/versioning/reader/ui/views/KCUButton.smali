.class public abstract Lcom/amazon/versioning/reader/ui/views/KCUButton;
.super Landroidx/appcompat/widget/AppCompatButton;
.source "KCUButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;)V

    .line 19
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUButton;->setupTheme(Landroid/content/Context;)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUButton;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUButton;->setupTheme(Landroid/content/Context;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUButton;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUButton;->setupTheme(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/reader/ui/views/KCUButton;->setupFontForTextView(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected abstract setupFontForTextView(Landroid/content/Context;)V
.end method

.method protected abstract setupTheme(Landroid/content/Context;)V
.end method
