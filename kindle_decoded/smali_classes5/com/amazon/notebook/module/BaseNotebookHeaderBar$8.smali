.class Lcom/amazon/notebook/module/BaseNotebookHeaderBar$8;
.super Ljava/lang/Object;
.source "BaseNotebookHeaderBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/notebook/module/BaseNotebookHeaderBar;->onActionClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;


# direct methods
.method constructor <init>(Lcom/amazon/notebook/module/BaseNotebookHeaderBar;Lcom/google/android/material/bottomsheet/BottomSheetDialog;)V
    .locals 0

    .line 474
    iput-object p2, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$8;->val$mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 477
    iget-object p1, p0, Lcom/amazon/notebook/module/BaseNotebookHeaderBar$8;->val$mBottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
