.class Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;
.super Ljava/lang/Object;
.source "EntityGroupListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChildViewHolder"
.end annotation


# instance fields
.field descriptionView:Lcom/amazon/xray/ui/widget/EnhancedTextView;

.field entityIconView:Landroid/widget/ImageView;

.field labelView:Landroid/widget/TextView;

.field numOccurrencesView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$1;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/amazon/xray/ui/adapter/EntityGroupListAdapter$ChildViewHolder;-><init>()V

    return-void
.end method
