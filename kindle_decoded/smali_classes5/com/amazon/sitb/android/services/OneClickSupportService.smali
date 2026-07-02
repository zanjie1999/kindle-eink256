.class public Lcom/amazon/sitb/android/services/OneClickSupportService;
.super Ljava/lang/Object;
.source "OneClickSupportService.java"


# instance fields
.field private final userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/application/IUserAccount;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/sitb/android/services/OneClickSupportService;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    return-void
.end method


# virtual methods
.method public isSupported()Z
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/amazon/sitb/android/services/OneClickSupportService;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AAHKV2X7AFYLW"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "A21TJRUUN4KGV"

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
