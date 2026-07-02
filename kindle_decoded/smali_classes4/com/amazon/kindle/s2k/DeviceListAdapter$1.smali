.class Lcom/amazon/kindle/s2k/DeviceListAdapter$1;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/DeviceListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/s2k/DeviceListAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/DeviceListAdapter;)V
    .locals 0

    .line 1387
    iput-object p1, p0, Lcom/amazon/kindle/s2k/DeviceListAdapter$1;->this$0:Lcom/amazon/kindle/s2k/DeviceListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1391
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 1392
    iget-object v0, p0, Lcom/amazon/kindle/s2k/DeviceListAdapter$1;->this$0:Lcom/amazon/kindle/s2k/DeviceListAdapter;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/DeviceListAdapter;->access$000(Lcom/amazon/kindle/s2k/DeviceListAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/s2k/KindleDevice;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/amazon/kindle/s2k/KindleDevice;->setSelected(Z)V

    return-void
.end method
