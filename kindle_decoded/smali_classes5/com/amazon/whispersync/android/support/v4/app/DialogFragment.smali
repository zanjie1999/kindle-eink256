.class public Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;
.super Lcom/amazon/whispersync/android/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDestroyed:Z

.field mDialog:Landroid/app/Dialog;

.field mRemoved:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mStyle:I

    .line 73
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mTheme:I

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mCancelable:Z

    .line 75
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mBackStackId:I

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 149
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->dismissInternal(Z)V

    return-void
.end method

.method dismissInternal(Z)V
    .locals 2

    .line 153
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 155
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    :cond_0
    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mRemoved:Z

    .line 158
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_1

    .line 159
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getFragmentManager()Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    move-result-object p1

    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->popBackStack(II)V

    const/4 p1, -0x1

    .line 161
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mBackStackId:I

    goto :goto_0

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getFragmentManager()Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->beginTransaction()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 164
    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->remove(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_2

    .line 166
    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 168
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->commit()I

    :goto_0
    return-void
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 3

    .line 249
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 250
    invoke-super {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object p1

    return-object p1

    .line 253
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDestroyed:Z

    .line 255
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 257
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x18

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 263
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 265
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    return-object p1
.end method

.method public getShowsDialog()Z
    .locals 1

    .line 227
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 310
    invoke-super {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 312
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    return-void

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 318
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    .line 321
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 319
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "DialogFragment can not be attached to a container view"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 323
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getActivity()Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 324
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    iget-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 325
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 326
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    if-eqz p1, :cond_3

    const-string v0, "android:savedDialogState"

    .line 328
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 330
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 232
    invoke-super {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 234
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainerId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-eqz p1, :cond_1

    const-string v0, "android:style"

    .line 237
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mStyle:I

    const-string v0, "android:theme"

    .line 238
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mTheme:I

    const-string v0, "android:cancelable"

    .line 239
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mCancelable:Z

    .line 240
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    const-string v1, "android:showsDialog"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    const/4 v0, -0x1

    const-string v1, "android:backStackId"

    .line 241
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mBackStackId:I

    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 292
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getActivity()Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 383
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onDestroyView()V

    const/4 v0, 0x1

    .line 384
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDestroyed:Z

    .line 385
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 389
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mRemoved:Z

    .line 390
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 299
    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mRemoved:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 304
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->dismissInternal(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 346
    invoke-super {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 347
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 348
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android:savedDialogState"

    .line 350
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 353
    :cond_0
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mStyle:I

    if-eqz v0, :cond_1

    const-string v1, "android:style"

    .line 354
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 356
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mTheme:I

    if-eqz v0, :cond_2

    const-string v1, "android:theme"

    .line 357
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 359
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mCancelable:Z

    if-nez v0, :cond_3

    const-string v1, "android:cancelable"

    .line 360
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 362
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_4

    const-string v1, "android:showsDialog"

    .line 363
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 365
    :cond_4
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    const-string v1, "android:backStackId"

    .line 366
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 337
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onStart()V

    .line 338
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 339
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mRemoved:Z

    .line 340
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 372
    invoke-super {p0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onStop()V

    .line 373
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 374
    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1

    .line 191
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mCancelable:Z

    .line 192
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0

    .line 220
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mShowsDialog:Z

    return-void
.end method

.method public setStyle(II)V
    .locals 1

    .line 100
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mStyle:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    :cond_0
    const p1, 0x1030059

    .line 102
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mTheme:I

    :cond_1
    if-eqz p2, :cond_2

    .line 105
    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mTheme:I

    :cond_2
    return-void
.end method

.method public show(Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 0

    .line 136
    invoke-virtual {p1, p0, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->add(Lcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    const/4 p2, 0x0

    .line 137
    iput-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mRemoved:Z

    .line 138
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->commit()I

    move-result p1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/DialogFragment;->mBackStackId:I

    return p1
.end method

.method public show(Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->beginTransaction()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    move-result-object p1

    .line 122
    invoke-virtual {p1, p0, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->add(Lcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 123
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method
