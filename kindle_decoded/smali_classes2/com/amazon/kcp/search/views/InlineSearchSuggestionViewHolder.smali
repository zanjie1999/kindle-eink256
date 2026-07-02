.class public Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "InlineSearchSuggestionViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;
    }
.end annotation


# instance fields
.field private final clickHandler:Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;)V
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;->clickHandler:Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;

    return-void
.end method

.method public static final synthetic access$getClickHandler$p(Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;)Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;->clickHandler:Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;

    return-object p0
.end method


# virtual methods
.method public final bindData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "query"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "suggestion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p1

    .line 25
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result v0

    .line 26
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v2, Lcom/amazon/kcp/search/R$id;->wayfinder_suggestion_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "itemView.findViewById<Te\u2026yfinder_suggestion_title)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move-object p1, p2

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    const/16 v2, 0x11

    .line 30
    invoke-virtual {p0, p2, v0, p1, v2}, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;->getRegularTextAppearanceSpan(Ljava/lang/String;III)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    .line 27
    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    iget-object p1, p0, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;->clickHandler:Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$ClickHandler;

    if-eqz p1, :cond_1

    .line 38
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$bindData$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder$bindData$1;-><init>(Lcom/amazon/kcp/search/views/InlineSearchSuggestionViewHolder;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public getRegularTextAppearanceSpan(Ljava/lang/String;III)Landroid/text/SpannableStringBuilder;
    .locals 3

    const-string v0, "suggestion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 51
    new-instance p1, Landroid/text/style/TextAppearanceSpan;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "this.itemView"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kcp/search/R$style;->Ruby_TextAppearance_Body:I

    invoke-direct {p1, v1, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 50
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    return-object v0
.end method
