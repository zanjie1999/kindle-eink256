.class final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$2;
.super Ljava/lang/Object;
.source "WiFiListBottomSheet.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->setContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 439
    iget-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-static {p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->access$getNegativeButtonListener$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$setContentView$2;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
