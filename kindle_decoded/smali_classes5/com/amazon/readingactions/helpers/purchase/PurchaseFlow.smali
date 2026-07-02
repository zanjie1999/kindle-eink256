.class public final Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;
.super Ljava/lang/Object;
.source "PurchaseFlow.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    return-void
.end method

.method public static final getEABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->getEABookStoreLabelText$default(Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getEABookStoreLabelText(Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v0 .. v5}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->getEABookStoreLabelText$default(Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getSABookStoreLabelText(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->getSABookStoreLabelText$default(Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isEnabled()Z
    .locals 1

    sget-object v0, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow;->Companion:Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;

    invoke-virtual {v0}, Lcom/amazon/readingactions/helpers/purchase/PurchaseFlow$Companion;->isEnabled()Z

    move-result v0

    return v0
.end method
