.class public Lcom/amazon/adapt/pentos/PentosClient;
.super Ljava/lang/Object;
.source "PentosClient.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPaymentPreferencesFragment(Ljava/lang/String;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/adapt/pentos/views/PaymentPreferencesFragment;

    move-result-object p0

    return-object p0
.end method
