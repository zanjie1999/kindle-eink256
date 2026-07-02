.class public final Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsFactory;
.super Ljava/lang/Object;
.source "DuoFoldable.kt"

# interfaces
.implements Lcom/amazon/kindle/displaymask/DisplayMaskUtilsFactory;


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsFactory;

    invoke-direct {v0}, Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsFactory;-><init>()V

    sput-object v0, Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsFactory;->INSTANCE:Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createDisplayMaskUtils(Landroid/app/Application;)Lcom/amazon/kindle/displaymask/DisplayMaskUtils;
    .locals 1

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "application.packageManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "com.microsoft.device.display.displaymask"

    .line 40
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    new-instance p1, Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsImpl;

    invoke-direct {p1}, Lcom/amazon/kindle/displaymask/duo/DuoDisplayMaskUtilsImpl;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
