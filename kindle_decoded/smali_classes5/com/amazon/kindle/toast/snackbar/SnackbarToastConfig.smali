.class public final Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;
.super Ljava/lang/Object;
.source "SnackbarToast.kt"


# instance fields
.field private actionBackgroundDrawableAttr:I

.field private actionPaddingHorizontalRes:I

.field private actionPaddingVerticalRes:I

.field private actionTextColorAttr:I

.field private actionTextSizeRes:I

.field private final activity:Landroid/app/Activity;

.field private final anchor:Landroid/view/View;

.field private animationDuration:J

.field private animationInterpolator:Landroid/view/animation/Interpolator;

.field private autoDismissDuration:J

.field private backgroundColorAttr:I

.field private buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

.field private message:Ljava/lang/String;

.field private messageActionMarginRes:I

.field private messageMaxLines:I

.field private messageTextColorAttr:I

.field private messageTextSizeRes:I

.field private paddingHorizontalRes:I

.field private paddingVerticalMultiLineRes:I

.field private paddingVerticalSingleLineRes:I

.field private shouldUseSafeInsets:Z

.field private typeface:I

.field private viewAction:Lcom/amazon/kindle/toast/KindleToastAction;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ILcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/KindleToastAction;IIIIIIIIIIIIIJJLandroid/view/animation/Interpolator;Z)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p24

    const-string v5, "activity"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "anchor"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "message"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "animationInterpolator"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->activity:Landroid/app/Activity;

    iput-object v2, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->anchor:Landroid/view/View;

    iput-object v3, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->message:Ljava/lang/String;

    move v1, p4

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->typeface:I

    move-object v1, p5

    iput-object v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    move-object v1, p6

    iput-object v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    move v1, p7

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->backgroundColorAttr:I

    move v1, p8

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingHorizontalRes:I

    move v1, p9

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalSingleLineRes:I

    move/from16 v1, p10

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalMultiLineRes:I

    move/from16 v1, p11

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextColorAttr:I

    move/from16 v1, p12

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextSizeRes:I

    move/from16 v1, p13

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageActionMarginRes:I

    move/from16 v1, p14

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageMaxLines:I

    move/from16 v1, p15

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextColorAttr:I

    move/from16 v1, p16

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionBackgroundDrawableAttr:I

    move/from16 v1, p17

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextSizeRes:I

    move/from16 v1, p18

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingHorizontalRes:I

    move/from16 v1, p19

    iput v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingVerticalRes:I

    move-wide/from16 v1, p20

    iput-wide v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->autoDismissDuration:J

    move-wide/from16 v1, p22

    iput-wide v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationDuration:J

    iput-object v4, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationInterpolator:Landroid/view/animation/Interpolator;

    move/from16 v1, p25

    iput-boolean v1, v0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->shouldUseSafeInsets:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ILcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/KindleToastAction;IIIIIIIIIIIIIJJLandroid/view/animation/Interpolator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 28

    move/from16 v0, p26

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v5, v1

    goto :goto_0

    :cond_0
    move-object/from16 v5, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move-object v7, v3

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    move-object v8, v3

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    .line 287
    sget v1, Lcom/amazon/kindle/krl/R$attr;->kindle_toast_background:I

    move v9, v1

    goto :goto_4

    :cond_4
    move/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    .line 288
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_padding_horizontal:I

    move v10, v1

    goto :goto_5

    :cond_5
    move/from16 v10, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    .line 289
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_padding_vertical_single_line:I

    move v11, v1

    goto :goto_6

    :cond_6
    move/from16 v11, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 290
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_padding_vertical_multi_line:I

    move v12, v1

    goto :goto_7

    :cond_7
    move/from16 v12, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    .line 291
    sget v1, Lcom/amazon/kindle/krl/R$attr;->kindle_toast_message_text_color:I

    move v13, v1

    goto :goto_8

    :cond_8
    move/from16 v13, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    .line 292
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_message_text_size:I

    move v14, v1

    goto :goto_9

    :cond_9
    move/from16 v14, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    .line 293
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_message_action_margin:I

    move v15, v1

    goto :goto_a

    :cond_a
    move/from16 v15, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    const/4 v1, 0x4

    const/16 v16, 0x4

    goto :goto_b

    :cond_b
    move/from16 v16, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    .line 295
    sget v1, Lcom/amazon/kindle/krl/R$attr;->kindle_toast_action_text_color:I

    move/from16 v17, v1

    goto :goto_c

    :cond_c
    move/from16 v17, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    .line 296
    sget v1, Lcom/amazon/kindle/krl/R$attr;->kindle_toast_action_background_drawable:I

    move/from16 v18, v1

    goto :goto_d

    :cond_d
    move/from16 v18, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    .line 297
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_action_text_size:I

    move/from16 v19, v1

    goto :goto_e

    :cond_e
    move/from16 v19, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    .line 298
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_action_padding_horizontal:I

    move/from16 v20, v1

    goto :goto_f

    :cond_f
    move/from16 v20, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    .line 299
    sget v1, Lcom/amazon/kindle/krl/R$dimen;->kindle_toast_action_padding_vertical:I

    move/from16 v21, v1

    goto :goto_10

    :cond_10
    move/from16 v21, p19

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    const-wide/16 v3, 0x2710

    move-wide/from16 v22, v3

    goto :goto_11

    :cond_11
    move-wide/from16 v22, p20

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    const-wide/16 v3, 0xfa

    move-wide/from16 v24, v3

    goto :goto_12

    :cond_12
    move-wide/from16 v24, p22

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    .line 302
    new-instance v1, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v1}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    move-object/from16 v26, v1

    goto :goto_13

    :cond_13
    move-object/from16 v26, p24

    :goto_13
    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    const/16 v27, 0x0

    goto :goto_14

    :cond_14
    move/from16 v27, p25

    :goto_14
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    .line 303
    invoke-direct/range {v2 .. v27}, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;ILcom/amazon/kindle/toast/KindleToastAction;Lcom/amazon/kindle/toast/KindleToastAction;IIIIIIIIIIIIIJJLandroid/view/animation/Interpolator;Z)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->activity:Landroid/app/Activity;

    iget-object v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->anchor:Landroid/view/View;

    iget-object v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->anchor:Landroid/view/View;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->message:Ljava/lang/String;

    iget-object v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->message:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->typeface:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->typeface:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    iget-object v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    iget-object v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->backgroundColorAttr:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->backgroundColorAttr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingHorizontalRes:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingHorizontalRes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalSingleLineRes:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalSingleLineRes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalMultiLineRes:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalMultiLineRes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextColorAttr:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextColorAttr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextSizeRes:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextSizeRes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageActionMarginRes:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageActionMarginRes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageMaxLines:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageMaxLines:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextColorAttr:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextColorAttr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionBackgroundDrawableAttr:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionBackgroundDrawableAttr:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextSizeRes:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextSizeRes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingHorizontalRes:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingHorizontalRes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingVerticalRes:I

    iget v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingVerticalRes:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->autoDismissDuration:J

    iget-wide v2, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->autoDismissDuration:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-wide v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationDuration:J

    iget-wide v2, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationDuration:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationInterpolator:Landroid/view/animation/Interpolator;

    iget-object v1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->shouldUseSafeInsets:Z

    iget-boolean p1, p1, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->shouldUseSafeInsets:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getActionBackgroundDrawableAttr()I
    .locals 1

    .line 296
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionBackgroundDrawableAttr:I

    return v0
.end method

.method public final getActionPaddingHorizontalRes()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingHorizontalRes:I

    return v0
.end method

.method public final getActionPaddingVerticalRes()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingVerticalRes:I

    return v0
.end method

.method public final getActionTextColorAttr()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextColorAttr:I

    return v0
.end method

.method public final getActionTextSizeRes()I
    .locals 1

    .line 297
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextSizeRes:I

    return v0
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getAnchor()Landroid/view/View;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->anchor:Landroid/view/View;

    return-object v0
.end method

.method public final getAnimationDuration()J
    .locals 2

    .line 301
    iget-wide v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationDuration:J

    return-wide v0
.end method

.method public final getAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public final getAutoDismissDuration()J
    .locals 2

    .line 300
    iget-wide v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->autoDismissDuration:J

    return-wide v0
.end method

.method public final getBackgroundColorAttr()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->backgroundColorAttr:I

    return v0
.end method

.method public final getButtonAction()Lcom/amazon/kindle/toast/KindleToastAction;
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessageActionMarginRes()I
    .locals 1

    .line 293
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageActionMarginRes:I

    return v0
.end method

.method public final getMessageMaxLines()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageMaxLines:I

    return v0
.end method

.method public final getMessageTextColorAttr()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextColorAttr:I

    return v0
.end method

.method public final getMessageTextSizeRes()I
    .locals 1

    .line 292
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextSizeRes:I

    return v0
.end method

.method public final getPaddingHorizontalRes()I
    .locals 1

    .line 288
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingHorizontalRes:I

    return v0
.end method

.method public final getPaddingVerticalMultiLineRes()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalMultiLineRes:I

    return v0
.end method

.method public final getPaddingVerticalSingleLineRes()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalSingleLineRes:I

    return v0
.end method

.method public final getShouldUseSafeInsets()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->shouldUseSafeInsets:Z

    return v0
.end method

.method public final getTypeface()I
    .locals 1

    .line 284
    iget v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->typeface:I

    return v0
.end method

.method public final getViewAction()Lcom/amazon/kindle/toast/KindleToastAction;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    iget-object v0, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->activity:Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->anchor:Landroid/view/View;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->typeface:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->backgroundColorAttr:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingHorizontalRes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalSingleLineRes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalMultiLineRes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextColorAttr:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextSizeRes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageActionMarginRes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageMaxLines:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextColorAttr:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionBackgroundDrawableAttr:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextSizeRes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingHorizontalRes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingVerticalRes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->autoDismissDuration:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationDuration:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v3, v2

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationInterpolator:Landroid/view/animation/Interpolator;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->shouldUseSafeInsets:Z

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :cond_6
    add-int/2addr v0, v1

    return v0
.end method

.method public final setButtonAction(Lcom/amazon/kindle/toast/KindleToastAction;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-void
.end method

.method public final setMessage(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 283
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->message:Ljava/lang/String;

    return-void
.end method

.method public final setShouldUseSafeInsets(Z)V
    .locals 0

    .line 303
    iput-boolean p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->shouldUseSafeInsets:Z

    return-void
.end method

.method public final setViewAction(Lcom/amazon/kindle/toast/KindleToastAction;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SnackbarToastConfig(activity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", anchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->anchor:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typeface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->typeface:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", buttonAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->buttonAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", viewAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->viewAction:Lcom/amazon/kindle/toast/KindleToastAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backgroundColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->backgroundColorAttr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paddingHorizontalRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingHorizontalRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paddingVerticalSingleLineRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalSingleLineRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", paddingVerticalMultiLineRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->paddingVerticalMultiLineRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageTextColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextColorAttr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageTextSizeRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageTextSizeRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageActionMarginRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageActionMarginRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageMaxLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->messageMaxLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionTextColorAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextColorAttr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionBackgroundDrawableAttr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionBackgroundDrawableAttr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionTextSizeRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionTextSizeRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionPaddingHorizontalRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingHorizontalRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", actionPaddingVerticalRes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->actionPaddingVerticalRes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", autoDismissDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->autoDismissDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", animationDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", animationInterpolator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->animationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", shouldUseSafeInsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/kindle/toast/snackbar/SnackbarToastConfig;->shouldUseSafeInsets:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
