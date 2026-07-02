.class public final Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useSnackbar$2;
.super Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;
.source "FFSSnackBar.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->useSnackbar(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback<",
        "Lcom/google/android/material/snackbar/Snackbar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $onDismiss:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useSnackbar$2;->$onDismiss:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useSnackbar$2;->$onDismiss:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 72
    invoke-super {p0, p1, p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;->onDismissed(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onDismissed(Ljava/lang/Object;I)V
    .locals 0

    .line 68
    check-cast p1, Lcom/google/android/material/snackbar/Snackbar;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useSnackbar$2;->onDismissed(Lcom/google/android/material/snackbar/Snackbar;I)V

    return-void
.end method
