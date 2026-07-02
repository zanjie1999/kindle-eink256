.class final Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$1;
.super Ljava/lang/Object;
.source "BaseBottomSheetFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment;->disableDimBackgroundWithAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $animate:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$1;->$animate:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/BaseBottomSheetFragment$disableDimBackgroundWithAnimation$1$1;->$animate:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
