.class Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory$1;
.super Ljava/lang/Object;
.source "ItemClickListenerFactory.java"

# interfaces
.implements Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;->reachedClippingLimit(Landroid/app/Activity;Lcom/amazon/kindle/krx/content/IBook;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/ui/gridItem/ItemClickListenerFactory;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlertDialogFragmentDetached(Landroid/app/Activity;)V
    .locals 0

    .line 313
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
