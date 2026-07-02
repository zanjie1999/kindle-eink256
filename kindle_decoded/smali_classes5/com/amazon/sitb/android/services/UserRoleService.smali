.class public Lcom/amazon/sitb/android/services/UserRoleService;
.super Ljava/lang/Object;
.source "UserRoleService.java"


# instance fields
.field private applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IApplicationManager;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/sitb/android/services/UserRoleService;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-void
.end method


# virtual methods
.method public getRole()Ljava/lang/String;
    .locals 2

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/services/UserRoleService;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getAccountProperty(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method
