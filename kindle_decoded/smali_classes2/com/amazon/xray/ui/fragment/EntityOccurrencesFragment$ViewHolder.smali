.class Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;
.super Ljava/lang/Object;
.source "EntityOccurrencesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field content:Landroid/view/ViewGroup;

.field error:Landroid/widget/TextView;

.field listView:Landroid/widget/ListView;

.field progress:Landroid/widget/ProgressBar;

.field seekBar:Lcom/amazon/xray/ui/widget/TimelineSeekBar;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$1;)V
    .locals 0

    .line 297
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/EntityOccurrencesFragment$ViewHolder;-><init>()V

    return-void
.end method
