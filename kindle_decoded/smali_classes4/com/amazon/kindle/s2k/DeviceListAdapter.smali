.class Lcom/amazon/kindle/s2k/DeviceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SendToKindleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/amazon/kindle/s2k/KindleDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/app/Activity;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/s2k/KindleDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/s2k/KindleDevice;",
            ">;)V"
        }
    .end annotation

    .line 1367
    sget v0, Lcom/amazon/kindle/s2k/R$layout;->row:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 1368
    iput-object p1, p0, Lcom/amazon/kindle/s2k/DeviceListAdapter;->context:Landroid/app/Activity;

    .line 1369
    iput-object p2, p0, Lcom/amazon/kindle/s2k/DeviceListAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/s2k/DeviceListAdapter;)Ljava/util/List;
    .locals 0

    .line 1358
    iget-object p0, p0, Lcom/amazon/kindle/s2k/DeviceListAdapter;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 1382
    iget-object p2, p0, Lcom/amazon/kindle/s2k/DeviceListAdapter;->context:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 1383
    sget p3, Lcom/amazon/kindle/s2k/R$layout;->row:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1384
    new-instance p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;-><init>()V

    .line 1385
    sget v0, Lcom/amazon/kindle/s2k/R$id;->label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    .line 1386
    sget v0, Lcom/amazon/kindle/s2k/R$id;->check:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    .line 1387
    new-instance v1, Lcom/amazon/kindle/s2k/DeviceListAdapter$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/s2k/DeviceListAdapter$1;-><init>(Lcom/amazon/kindle/s2k/DeviceListAdapter;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1395
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1396
    sget v0, Lcom/amazon/kindle/s2k/R$id;->label:I

    iget-object v1, p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1397
    sget v0, Lcom/amazon/kindle/s2k/R$id;->check:I

    iget-object v1, p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p2, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 1399
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;

    .line 1401
    :goto_0
    iget-object v0, p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 1403
    iget-object v0, p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/kindle/s2k/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {v1}, Lcom/amazon/kindle/s2k/KindleDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1404
    iget-object p3, p3, Lcom/amazon/kindle/s2k/DeviceListAdapter$ViewHolder;->checkbox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/amazon/kindle/s2k/DeviceListAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {p1}, Lcom/amazon/kindle/s2k/KindleDevice;->isSelected()Z

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-object p2
.end method
