.class public Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapper;


# instance fields
.field private final mAccountManager:Landroid/accounts/AccountManager;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;->mAccountManager:Landroid/accounts/AccountManager;

    return-void
.end method


# virtual methods
.method public addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/accounts/AccountManager;->addAccountExplicitly(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object p1

    return-object p1
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Landroid/accounts/AccountManagerCallback<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/accounts/AccountManager;->removeAccount(Landroid/accounts/Account;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method

.method public removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v0, p1}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    return-void
.end method

.method public updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/app/Activity;",
            "Landroid/accounts/AccountManagerCallback<",
            "Landroid/os/Bundle;",
            ">;",
            "Landroid/os/Handler;",
            ")",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/AccountManagerWrapperImpl;->mAccountManager:Landroid/accounts/AccountManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->updateCredentials(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    return-object p1
.end method
