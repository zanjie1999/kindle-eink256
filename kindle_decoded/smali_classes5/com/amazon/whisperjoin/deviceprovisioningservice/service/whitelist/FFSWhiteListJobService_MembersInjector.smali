.class public final Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService_MembersInjector;
.super Ljava/lang/Object;
.source "FFSWhiteListJobService_MembersInjector.java"

# interfaces
.implements Ldagger/MembersInjector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/MembersInjector<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;",
        ">;"
    }
.end annotation


# instance fields
.field private final mWhiteListPolicyCoordinatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static injectMWhiteListPolicyCoordinator(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/FFSWhiteListJobService;->mWhiteListPolicyCoordinator:Lcom/amazon/whisperjoin/deviceprovisioningservice/service/whitelist/WhiteListPolicyCoordinator;

    return-void
.end method
