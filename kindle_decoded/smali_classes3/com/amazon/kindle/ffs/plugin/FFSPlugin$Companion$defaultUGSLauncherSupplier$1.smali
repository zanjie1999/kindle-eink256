.class final Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FFSPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/ffs/plugin/FFSPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/krx/IKindleReaderSDK;",
        "Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;->INSTANCE:Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;
    .locals 1

    const-string v0, "kindleSDK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    new-instance v0, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/plugin/FFSPlugin$Companion$defaultUGSLauncherSupplier$1;->invoke(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/ffs/provisioners/UGSLauncher;

    move-result-object p1

    return-object p1
.end method
