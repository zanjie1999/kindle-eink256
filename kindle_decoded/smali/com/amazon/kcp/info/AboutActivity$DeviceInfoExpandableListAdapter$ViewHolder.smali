.class Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AboutActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field detailTitleTextView:Landroid/widget/TextView;

.field detailValueTextView:Landroid/widget/TextView;

.field expandIconView:Landroid/widget/ImageView;

.field sectionTitleTextView:Landroid/widget/TextView;

.field statusIconView:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;)V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;Lcom/amazon/kcp/info/AboutActivity$1;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter$ViewHolder;-><init>(Lcom/amazon/kcp/info/AboutActivity$DeviceInfoExpandableListAdapter;)V

    return-void
.end method
