.class Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$3;
.super Ljava/lang/Object;
.source "SendToKindleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->onGetDevicesSuccess(Lcom/amazon/kindle/s2k/webservice/GetDevicesResponseModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;)V
    .locals 0

    .line 1287
    iput-object p1, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$3;->this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices$3;->this$1:Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;

    iget-object v0, v0, Lcom/amazon/kindle/s2k/SendToKindleActivity$GetListOfOwnedDevices;->this$0:Lcom/amazon/kindle/s2k/SendToKindleActivity;

    invoke-static {v0}, Lcom/amazon/kindle/s2k/SendToKindleActivity;->access$300(Lcom/amazon/kindle/s2k/SendToKindleActivity;)V

    return-void
.end method
