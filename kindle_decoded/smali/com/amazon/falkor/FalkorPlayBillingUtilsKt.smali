.class public final Lcom/amazon/falkor/FalkorPlayBillingUtilsKt;
.super Ljava/lang/Object;
.source "FalkorPlayBillingUtils.kt"


# static fields
.field private static final paymentDisabledStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.android.vending"

    .line 18
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/falkor/FalkorPlayBillingUtilsKt;->paymentDisabledStores:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getPaymentDisabledStores$p()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazon/falkor/FalkorPlayBillingUtilsKt;->paymentDisabledStores:Ljava/util/List;

    return-object v0
.end method
