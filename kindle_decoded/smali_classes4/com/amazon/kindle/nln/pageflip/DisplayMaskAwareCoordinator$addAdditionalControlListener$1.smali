.class public final Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$1;
.super Ljava/lang/Object;
.source "LocationSeekerLayoutCoordinator.kt"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator;->addAdditionalControlListener(Landroid/view/ViewGroup;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $updateHeight:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$1;->$updateHeight:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/nln/pageflip/DisplayMaskAwareCoordinator$addAdditionalControlListener$1;->$updateHeight:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    return-void
.end method
