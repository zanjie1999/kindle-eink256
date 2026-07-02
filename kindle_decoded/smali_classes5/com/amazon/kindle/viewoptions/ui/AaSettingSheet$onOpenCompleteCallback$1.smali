.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaSettingSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;->INSTANCE:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet$onOpenCompleteCallback$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 34
    sget-object v0, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    const-string v1, "KindlePerformanceConstants.AA_MENU_OPEN"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method
