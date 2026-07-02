.class public Lcom/amazon/xray/ui/util/TextHighlighter;
.super Ljava/lang/Object;
.source "TextHighlighter.java"


# static fields
.field private static final NOT_FOUND:I = -0x1


# instance fields
.field private final styleSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/text/style/StyleSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/util/TextHighlighter;->styleSpans:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public highlight(Ljava/lang/String;Ljava/util/List;)Landroid/text/Spannable;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/text/Spannable;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string v3, "context required"

    const/4 v4, 0x1

    aput-object v3, v1, v4

    .line 35
    invoke-static {v1}, Lcom/amazon/xray/util/Validate;->notNull([Ljava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p2, v0, v2

    const-string v1, "occurrences required"

    aput-object v1, v0, v4

    .line 36
    invoke-static {v0}, Lcom/amazon/xray/util/Validate;->notNull([Ljava/lang/Object;)V

    .line 39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    :goto_0
    iget-object v1, p0, Lcom/amazon/xray/ui/util/TextHighlighter;->styleSpans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 41
    iget-object v1, p0, Lcom/amazon/xray/ui/util/TextHighlighter;->styleSpans:Ljava/util/List;

    new-instance v3, Landroid/text/style/StyleSpan;

    invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 45
    :cond_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    .line 48
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 50
    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 52
    iget-object v4, p0, Lcom/amazon/xray/ui/util/TextHighlighter;->styleSpans:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v6

    invoke-interface {v1, v4, v6, v7, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 55
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v6

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method
