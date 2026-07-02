.class public Lcom/amazon/xray/ui/fragment/ExcerptsFragment$ViewHolder;
.super Ljava/lang/Object;
.source "ExcerptsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/ExcerptsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ViewHolder"
.end annotation


# instance fields
.field chapter:Landroid/widget/TextView;

.field content:Landroid/view/ViewGroup;

.field contextFooter:Landroid/view/ViewGroup;

.field error:Landroid/widget/TextView;

.field excerptCards:Lcom/amazon/xray/ui/widget/CardCarousel;

.field imageCaption:Lcom/amazon/xray/ui/widget/EnhancedTextView;

.field imageLinkListener:Lcom/amazon/xray/ui/listener/GoToImageExcerptOnClickListener;

.field progress:Landroid/widget/ProgressBar;

.field relatedEntities:Lcom/amazon/xray/ui/widget/RelatedEntitySentenceView;

.field seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 568
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
