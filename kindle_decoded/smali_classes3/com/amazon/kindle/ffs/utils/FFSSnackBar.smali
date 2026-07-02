.class public final Lcom/amazon/kindle/ffs/utils/FFSSnackBar;
.super Ljava/lang/Object;
.source "FFSSnackBar.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFFSSnackBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FFSSnackBar.kt\ncom/amazon/kindle/ffs/utils/FFSSnackBar\n*L\n1#1,94:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar;

.field private static snackBar:Lcom/google/android/material/snackbar/Snackbar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final useDialog(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/ffs/R$string;->ffs_dismiss:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.resources.getString(R.string.ffs_dismiss)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getDefault()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 50
    new-instance p2, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$1;

    invoke-direct {p2, p5}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p4, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 54
    sget-object p2, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$2;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$2;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 57
    new-instance p1, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$3;

    invoke-direct {p1, p6}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useDialog$3;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    return-void

    .line 46
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final show(Landroid/content/Context;Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "device"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget-object v0, Lcom/amazon/kindle/ffs/utils/UGSTimeout;->Companion:Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/utils/UGSTimeout$Companion;->stopExistingTimeout()V

    .line 26
    sget-object v0, Lcom/amazon/kindle/ffs/utils/SeenDevices;->INSTANCE:Lcom/amazon/kindle/ffs/utils/SeenDevices;

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/ffs/utils/SeenDevices;->blockDevice(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    .line 28
    sget-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_4

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/amazon/kindle/ffs/R$string;->ffs_dismissed_setup_toast:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/ffs/R$string;->ffs_retry:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "context.resources.getString(R.string.ffs_retry)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Locale.getDefault()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v7, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$show$onRetry$1;

    invoke-direct {v7, p2}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$show$onRetry$1;-><init>(Lcom/amazon/whisperjoin/deviceprovisioningservice/device/DiscoveredDevice;)V

    .line 34
    sget-object v8, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$show$onDismiss$1;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FFSSnackBar$show$onDismiss$1;

    .line 38
    sget-object p2, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->isScreenReaderEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    move-object v2, p0

    move-object v3, p1

    .line 39
    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->useDialog(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    goto :goto_1

    :cond_1
    move-object v2, p0

    move-object v3, p1

    .line 41
    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->useSnackbar(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    :goto_1
    return-void

    .line 38
    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1

    .line 30
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v1
.end method

.method public final useSnackbar(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryText"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onRetry"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDismiss"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v0, "activity.window"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    const v0, 0x1020002

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v0, "activity.window.decorVie\u2026yId(android.R.id.content)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1b58

    .line 65
    invoke-static {p2, p3, v0}, Lcom/google/android/material/snackbar/Snackbar;->make(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p2

    const-string p3, "Snackbar.make(rootView, \u2026R_DISPLAY_SECONDS * 1000)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p2, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->snackBar:Lcom/google/android/material/snackbar/Snackbar;

    const-string p3, "snackBar"

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 66
    new-instance v1, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useSnackbar$1;

    invoke-direct {v1, p5}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useSnackbar$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, p4, v1}, Lcom/google/android/material/snackbar/Snackbar;->setAction(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/google/android/material/snackbar/Snackbar;

    .line 68
    new-instance p4, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useSnackbar$2;

    invoke-direct {p4, p6}, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$useSnackbar$2;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {p2, p4}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->addCallback(Lcom/google/android/material/snackbar/BaseTransientBottomBar$BaseCallback;)Lcom/google/android/material/snackbar/BaseTransientBottomBar;

    .line 76
    sget-object p2, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->snackBar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/google/android/material/snackbar/BaseTransientBottomBar;->getView()Landroid/view/View;

    move-result-object p2

    const-string p4, "snackBar.view"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    sget p4, Lcom/google/android/material/R$id;->snackbar_text:I

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    if-eqz p4, :cond_7

    check-cast p4, Landroid/widget/TextView;

    const/16 p5, 0xa

    .line 78
    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 80
    sget-object p5, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->Companion:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;

    invoke-virtual {p5}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion;->get()Lcom/amazon/kindle/ffs/plugin/FFSPlugin;

    move-result-object p5

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin;->getTheme()Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p5

    goto :goto_0

    :cond_0
    move-object p5, v0

    :goto_0
    if-nez p5, :cond_1

    goto :goto_1

    :cond_1
    sget-object p6, Lcom/amazon/kindle/ffs/utils/FFSSnackBar$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, p6, p5

    const/4 p6, 0x1

    if-eq p5, p6, :cond_4

    const/4 p6, 0x2

    if-eq p5, p6, :cond_2

    goto :goto_1

    .line 87
    :cond_2
    sget p5, Lcom/amazon/kindle/ffs/R$color;->white:I

    invoke-static {p1, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 88
    sget-object p4, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->snackBar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz p4, :cond_3

    sget p5, Lcom/amazon/kindle/ffs/R$color;->blue_retry_button:I

    invoke-static {p1, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p5

    invoke-virtual {p4, p5}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 89
    sget p4, Lcom/amazon/kindle/ffs/R$color;->snack_bar_dark:I

    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    .line 88
    :cond_3
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_4
    sget p5, Lcom/amazon/kindle/ffs/R$color;->amazon_black:I

    invoke-static {p1, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p5

    invoke-virtual {p4, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    sget-object p4, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->snackBar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz p4, :cond_6

    sget p5, Lcom/amazon/kindle/ffs/R$color;->link_text_color:I

    invoke-static {p1, p5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p5

    invoke-virtual {p4, p5}, Lcom/google/android/material/snackbar/Snackbar;->setActionTextColor(I)Lcom/google/android/material/snackbar/Snackbar;

    .line 84
    sget p4, Lcom/amazon/kindle/ffs/R$color;->background_color:I

    invoke-static {p1, p4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    :goto_1
    sget-object p1, Lcom/amazon/kindle/ffs/utils/FFSSnackBar;->snackBar:Lcom/google/android/material/snackbar/Snackbar;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->show()V

    return-void

    :cond_5
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_6
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_7
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_8
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_9
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
