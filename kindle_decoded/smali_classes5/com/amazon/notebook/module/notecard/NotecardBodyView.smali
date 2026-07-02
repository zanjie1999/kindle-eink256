.class public Lcom/amazon/notebook/module/notecard/NotecardBodyView;
.super Landroid/widget/FrameLayout;
.source "NotecardBodyView.java"


# instance fields
.field protected final inflater:Landroid/view/LayoutInflater;

.field protected isHighlightable:Z

.field protected textSnippet:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->isHighlightable:Z

    const-string v0, "layout_inflater"

    .line 37
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public applyAnnotationNote(Lcom/amazon/kcp/reader/Note;Z)V
    .locals 0

    .line 53
    invoke-virtual {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->getUserTextOrBookText(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->inflateTextView(Ljava/lang/String;Z)V

    return-void
.end method

.method protected getUserTextOrBookText(Lcom/amazon/kcp/reader/Note;)Ljava/lang/String;
    .locals 2

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getUserText()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getBookText()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public inflateTextView(Ljava/lang/String;Z)V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->inflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/amazon/notebook/module/R$layout;->notecard_module_text_snippet_ruby:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    sget v0, Lcom/amazon/notebook/module/R$id;->notecard_module_text_snippet_ruby:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->textSnippet:Landroid/widget/TextView;

    .line 62
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v1

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->BOOKERLY:Lcom/mobipocket/android/drawing/FontFamily;

    invoke-virtual {v1, v2}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->textSnippet:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz p2, :cond_0

    .line 65
    iget-object p2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->textSnippet:Landroid/widget/TextView;

    const/4 v0, -0x1

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 67
    :cond_0
    iget-object p2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->textSnippet:Landroid/widget/TextView;

    const/high16 v0, -0x1000000

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    :goto_0
    iget-object p2, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->textSnippet:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public isHighlightable()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;->isHighlightable:Z

    return v0
.end method
