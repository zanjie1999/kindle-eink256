.class Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;
.super Ljava/lang/Object;
.source "EntityDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field content:Landroid/view/View;

.field descriptionSeparator:Landroid/view/View;

.field entityDesc:Lcom/amazon/xray/ui/widget/EnhancedTextView;

.field entityIcon:Landroid/widget/ImageView;

.field error:Landroid/widget/TextView;

.field progress:Landroid/widget/ProgressBar;

.field separator:Landroid/view/View;

.field tabContent:Landroid/view/ViewGroup;

.field tabs:Lcom/amazon/xray/ui/widget/TabView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntityDetailFragment$1;)V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/EntityDetailFragment$ViewHolder;-><init>()V

    return-void
.end method
