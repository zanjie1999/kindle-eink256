.class public final Lcom/amazon/kcp/accounts/StandaloneRegistrationProviderFactory;
.super Ljava/lang/Object;
.source "StandaloneRegistrationProviderFactory.kt"

# interfaces
.implements Lcom/amazon/kcp/accounts/RegistrationProviderFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createRegistrationProvider(Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kindle/services/authentication/IAccountProvider;)Lcom/amazon/kcp/accounts/RegistrationProvider;
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/accounts/StandaloneRegistrationProvider;-><init>(Landroidx/appcompat/app/AppCompatActivity;Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kindle/services/authentication/IAccountProvider;)V

    return-object v0
.end method
