.class Lcom/amazon/kcp/library/EditDeviceNameActivity$1;
.super Ljava/lang/Object;
.source "EditDeviceNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/EditDeviceNameActivity;->initRenameButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/EditDeviceNameActivity;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$1;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 66
    iget-object p1, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$1;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->new_name:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 67
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/library/EditDeviceNameActivity$1;->this$0:Lcom/amazon/kcp/library/EditDeviceNameActivity;

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/EditDeviceNameActivity;->access$000(Lcom/amazon/kcp/library/EditDeviceNameActivity;Ljava/lang/String;)V

    return-void
.end method
