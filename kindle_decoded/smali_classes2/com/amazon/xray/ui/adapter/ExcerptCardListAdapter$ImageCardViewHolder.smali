.class Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;
.super Ljava/lang/Object;
.source "ExcerptCardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageCardViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field pageButton:Landroid/widget/Button;

.field pageListener:Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

.field separator:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V
    .locals 0

    .line 820
    invoke-direct {p0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$ImageCardViewHolder;-><init>()V

    return-void
.end method
