.class final Lcom/amazon/kindle/scan/ScanLocalContentUtils$lastScanned$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ScanLocalContentUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/scan/ScanLocalContentUtils;-><init>(Lcom/amazon/kindle/scan/FullScanRedriveHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Properties;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/scan/ScanLocalContentUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$lastScanned$2;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 53
    invoke-virtual {p0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils$lastScanned$2;->invoke()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Properties;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/scan/ScanLocalContentUtils$lastScanned$2;->this$0:Lcom/amazon/kindle/scan/ScanLocalContentUtils;

    invoke-virtual {v0}, Lcom/amazon/kindle/scan/ScanLocalContentUtils;->loadLastScanned()Ljava/util/Properties;

    move-result-object v0

    return-object v0
.end method
