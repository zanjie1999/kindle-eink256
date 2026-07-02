.class public final Lcom/amazon/kindle/displaymask/DisplayMaskManager;
.super Ljava/lang/Object;
.source "DisplayMaskUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskManager;

.field private static final INSTANCE$delegate:Lkotlin/Lazy;

.field private static application:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    new-instance v0, Lcom/amazon/kindle/displaymask/DisplayMaskManager;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;-><init>()V

    sput-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskManager;

    .line 22
    sget-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskManager$INSTANCE$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->INSTANCE$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getApplication$p(Lcom/amazon/kindle/displaymask/DisplayMaskManager;)Landroid/app/Application;
    .locals 0

    .line 20
    sget-object p0, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->application:Landroid/app/Application;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "application"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method private final getINSTANCE()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->INSTANCE$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    return-object v0
.end method

.method public static final getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskManager;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getINSTANCE()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    return-object v0
.end method

.method public static final initialize(Landroid/app/Application;)V
    .locals 1

    const-string v0, "application"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sput-object p0, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->application:Landroid/app/Application;

    .line 39
    sget-object p0, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->INSTANCE:Lcom/amazon/kindle/displaymask/DisplayMaskManager;

    invoke-direct {p0}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getINSTANCE()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    return-void
.end method
