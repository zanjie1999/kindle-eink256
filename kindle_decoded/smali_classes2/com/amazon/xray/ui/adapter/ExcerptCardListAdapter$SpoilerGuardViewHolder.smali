.class Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;
.super Ljava/lang/Object;
.source "ExcerptCardListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpoilerGuardViewHolder"
.end annotation


# instance fields
.field excerptView:Landroid/widget/TextView;

.field imageView:Landroid/widget/ImageView;

.field spoilerButton:Landroid/widget/TextView;

.field spoilerMask:Landroid/view/View;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 843
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V
    .locals 0

    .line 843
    invoke-direct {p0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$SpoilerGuardViewHolder;-><init>()V

    return-void
.end method
