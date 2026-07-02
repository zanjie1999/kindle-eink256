.class public final Lcom/amazon/kindle/toast/KindleToast$Builder;
.super Ljava/lang/Object;
.source "KindleToast.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/toast/KindleToast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final dialogConfig:Lcom/amazon/kindle/toast/DialogToastConfig;

.field private final snackbarConfig:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v1, "activity"

    move-object/from16 v15, p1

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "anchor"

    move-object/from16 v4, p2

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v14, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    move-object v1, v14

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v29, v14

    move/from16 v14, v16

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0x7ffffc

    const/16 v28, 0x0

    invoke-direct/range {v1 .. v28}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ILcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/KindleToastAction;IIIIIIIIIIIIIJJLandroid/view/animation/Interpolator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, v29

    iput-object v1, v0, Lcom/amazon/kindle/toast/KindleToast$Builder;->snackbarConfig:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    .line 31
    new-instance v1, Lcom/amazon/kindle/toast/DialogToastConfig;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const/4 v11, 0x0

    move-object v4, v1

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/amazon/kindle/toast/DialogToastConfig;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/KindleToastAction;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v1, v0, Lcom/amazon/kindle/toast/KindleToast$Builder;->dialogConfig:Lcom/amazon/kindle/toast/DialogToastConfig;

    return-void
.end method


# virtual methods
.method public final build()Lcom/amazon/kindle/toast/KindleToast;
    .locals 2

    .line 84
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isSpokenFeedbackAccessibilityServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Lcom/amazon/kindle/toast/DialogToast;

    iget-object v1, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->dialogConfig:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/toast/DialogToast;-><init>(Lcom/amazon/kindle/toast/DialogToastConfig;)V

    goto :goto_0

    .line 87
    :cond_0
    new-instance v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;

    iget-object v1, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->snackbarConfig:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-direct {v0, v1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToast;-><init>(Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;)V

    :goto_0
    return-object v0
.end method

.method public final setAccessibilityMessage(Ljava/lang/String;)Lcom/amazon/kindle/toast/KindleToast$Builder;
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->dialogConfig:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/DialogToastConfig;->setMessageForAccessibility(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setButtonAction(Lcom/amazon/kindle/toast/KindleToastAction;)Lcom/amazon/kindle/toast/KindleToast$Builder;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->snackbarConfig:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->setButtonAction(Lcom/amazon/kindle/toast/KindleToastAction;)V

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->dialogConfig:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/DialogToastConfig;->setButtonAction(Lcom/amazon/kindle/toast/KindleToastAction;)V

    return-object p0
.end method

.method public final setMessage(Ljava/lang/String;)Lcom/amazon/kindle/toast/KindleToast$Builder;
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->snackbarConfig:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->setMessage(Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->dialogConfig:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/DialogToastConfig;->setMessage(Ljava/lang/String;)V

    return-object p0
.end method

.method public final setShouldUseSafeInsets(Z)Lcom/amazon/kindle/toast/KindleToast$Builder;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->snackbarConfig:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->setShouldUseSafeInsets(Z)V

    return-object p0
.end method

.method public final setViewAction(Lcom/amazon/kindle/toast/KindleToastAction;)Lcom/amazon/kindle/toast/KindleToast$Builder;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->snackbarConfig:Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->setViewAction(Lcom/amazon/kindle/toast/KindleToastAction;)V

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/toast/KindleToast$Builder;->dialogConfig:Lcom/amazon/kindle/toast/DialogToastConfig;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/toast/DialogToastConfig;->setViewAction(Lcom/amazon/kindle/toast/KindleToastAction;)V

    return-object p0
.end method
