.class Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;
.super Ljava/lang/Object;
.source "ExcerptCardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TextCardViewHolder"
.end annotation


# instance fields
.field cardLinks:Landroid/view/View;

.field excerptScrollView:Landroid/widget/ScrollView;

.field excerptView:Landroid/widget/TextView;

.field pageButton:Landroid/widget/Button;

.field pageListener:Lcom/amazon/xray/ui/listener/GoToEntityExcerptOnClickListener;

.field pageShareSeparator:Landroid/widget/TextView;

.field saveHighlightButton:Landroid/widget/Button;

.field saveHighlightListener:Lcom/amazon/xray/ui/listener/HighlightExcerptOnClickListener;

.field separator:Landroid/view/View;

.field shareButton:Landroid/widget/Button;

.field shareHighlightSeparator:Landroid/widget/TextView;

.field shareListener:Lcom/amazon/xray/ui/listener/ShareExcerptOnClickListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V
    .locals 0

    .line 799
    invoke-direct {p0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$TextCardViewHolder;-><init>()V

    return-void
.end method
