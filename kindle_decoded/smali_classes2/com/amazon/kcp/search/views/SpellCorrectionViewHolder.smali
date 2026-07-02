.class public Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SpellCorrectionViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder$ClickHandler;
    }
.end annotation


# instance fields
.field private actualSearchText:Landroid/widget/TextView;

.field private autoCorrectedSearchText:Landroid/widget/TextView;

.field private clickHandler:Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder$ClickHandler;

.field private spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder$ClickHandler;)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 37
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->auto_corrected_search_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->autoCorrectedSearchText:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->actual_search_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->actualSearchText:Landroid/widget/TextView;

    .line 39
    iput-object p2, p0, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->clickHandler:Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder$ClickHandler;

    if-eqz p2, :cond_0

    .line 41
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public static getLayoutId()I
    .locals 1

    .line 50
    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->wayfinder_search_result_spell_correction:I

    return v0
.end method


# virtual methods
.method public bindData(Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;Landroid/content/Context;)V
    .locals 6

    .line 60
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    .line 62
    new-instance v0, Landroid/text/SpannableStringBuilder;

    sget v1, Lcom/amazon/kcp/search/R$string;->showing_results_for:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getQuery()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 66
    sget v1, Lcom/amazon/kcp/search/R$string;->showing_results_for:I

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x1

    add-int/2addr v1, v3

    .line 67
    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v1

    .line 68
    new-instance v5, Landroid/text/style/StyleSpan;

    invoke-direct {v5, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v3, 0x21

    invoke-virtual {v0, v5, v1, v4, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 70
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->autoCorrectedSearchText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->actualSearchText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/amazon/kcp/search/R$string;->search_instead_for:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;->getAlternateQuery()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->clickHandler:Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder$ClickHandler;

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder;->spellCorrectionInfo:Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;

    invoke-interface {p1, v0}, Lcom/amazon/kcp/search/views/SpellCorrectionViewHolder$ClickHandler;->onClick(Lcom/amazon/kcp/search/store/model/SpellCorrectionInfo;)V

    :cond_0
    return-void
.end method
